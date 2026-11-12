import Foundation
import Security
import CryptoKit
import CommonCrypto

public protocol Signer: Sendable {
    /// Adds date/host/x-content-sha256/content-type/content-length (as needed) and Authorization.
    func sign(_ req: inout URLRequest) throws
}

public enum SignerError: Error, Sendable, Equatable {
    case invalidRequest(String)
    case invalidPEM(String)
    case keyImportFailed(String)
    case signingFailed(String)
}

/// OCI API-key request signer (draft-cavage HTTP signatures, rsa-sha256).
/// Ref: https://docs.oracle.com/en-us/iaas/Content/API/Concepts/signingrequests.htm
public final class APIKeySigner: Signer, @unchecked Sendable {
    // @unchecked: SecKey is an immutable, thread-safe CoreFoundation object; all other state is `let`.
    public let keyId: String
    private let privateKey: SecKey
    private let now: @Sendable () -> Date

    static let bodyMethods: Set<String> = ["POST", "PUT", "PATCH"]

    public init(tenancy: String, user: String, fingerprint: String, privateKeyPEM: String,
                passphrase: String? = nil, now: @escaping @Sendable () -> Date = { Date() }) throws {
        self.keyId = "\(tenancy)/\(user)/\(fingerprint)"
        self.privateKey = try PEMKey.importRSAPrivateKey(pem: privateKeyPEM, passphrase: passphrase)
        self.now = now
    }

    public convenience init(provider: ConfigFileProvider) throws {
        let pem = try provider.privateKeyPEM()
        try self.init(tenancy: provider.tenancy, user: provider.user, fingerprint: provider.fingerprint,
                      privateKeyPEM: pem, passphrase: provider.passphrase)
    }

    /// Builds the signing string for the given ordered header names. Pure function, used by tests.
    public static func signingString(method: String, requestTarget: String, headers: [String: String],
                                     headerNames: [String]) throws -> String {
        let lower = Dictionary(uniqueKeysWithValues: headers.map { ($0.key.lowercased(), $0.value) })
        var lines: [String] = []
        for name in headerNames {
            if name == "(request-target)" {
                lines.append("(request-target): \(method.lowercased()) \(requestTarget)")
            } else {
                guard let v = lower[name] else { throw SignerError.invalidRequest("missing header \(name)") }
                lines.append("\(name): \(v)")
            }
        }
        return lines.joined(separator: "\n")
    }

    public static func headerNames(forMethod method: String) -> [String] {
        let m = method.uppercased()
        var names = ["(request-target)", "date", "host"]
        if bodyMethods.contains(m) { names += ["x-content-sha256", "content-type", "content-length"] }
        return names
    }

    static func httpDate(_ d: Date) -> String {
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.timeZone = TimeZone(identifier: "GMT")
        f.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
        return f.string(from: d)
    }

    public func sign(_ req: inout URLRequest) throws {
        guard let url = req.url, let comps = URLComponents(url: url, resolvingAgainstBaseURL: false),
              let host = comps.host, let method = req.httpMethod?.uppercased() else {
            throw SignerError.invalidRequest("request needs url, host and method")
        }
        var target = comps.percentEncodedPath.isEmpty ? "/" : comps.percentEncodedPath
        if let q = comps.percentEncodedQuery, !q.isEmpty { target += "?" + q }

        let hostHeader = comps.port.map { "\(host):\($0)" } ?? host
        req.setValue(hostHeader, forHTTPHeaderField: "host")
        if req.value(forHTTPHeaderField: "date") == nil {
            req.setValue(Self.httpDate(now()), forHTTPHeaderField: "date")
        }
        if Self.bodyMethods.contains(method) {
            let body = req.httpBody ?? Data()
            req.setValue(Data(SHA256.hash(data: body)).base64EncodedString(), forHTTPHeaderField: "x-content-sha256")
            req.setValue(String(body.count), forHTTPHeaderField: "content-length")
            if req.value(forHTTPHeaderField: "content-type") == nil {
                req.setValue("application/json", forHTTPHeaderField: "content-type")
            }
        }
        let names = Self.headerNames(forMethod: method)
        var hdrs: [String: String] = [:]
        for (k, v) in req.allHTTPHeaderFields ?? [:] { hdrs[k] = v }
        let sstr = try Self.signingString(method: method, requestTarget: target, headers: hdrs, headerNames: names)

        var err: Unmanaged<CFError>?
        guard let sig = SecKeyCreateSignature(privateKey, .rsaSignatureMessagePKCS1v15SHA256,
                                              Data(sstr.utf8) as CFData, &err) as Data? else {
            throw SignerError.signingFailed(err?.takeRetainedValue().localizedDescription ?? "unknown")
        }
        let auth = "Signature version=\"1\",keyId=\"\(keyId)\",algorithm=\"rsa-sha256\",headers=\"\(names.joined(separator: " "))\",signature=\"\(sig.base64EncodedString())\""
        req.setValue(auth, forHTTPHeaderField: "authorization")
    }
}

// MARK: - PEM / DER handling

enum PEMKey {
    static func importRSAPrivateKey(pem: String, passphrase: String?) throws -> SecKey {
        let trimmed = pem.trimmingCharacters(in: .whitespacesAndNewlines)
        guard let begin = trimmed.range(of: "-----BEGIN ") else { throw SignerError.invalidPEM("no PEM header") }
        let labelStart = begin.upperBound
        guard let labelEnd = trimmed.range(of: "-----", range: labelStart..<trimmed.endIndex) else {
            throw SignerError.invalidPEM("bad PEM header")
        }
        let label = String(trimmed[labelStart..<labelEnd.lowerBound])
        let legacyEncrypted = trimmed.contains("Proc-Type: 4,ENCRYPTED")

        if label == "ENCRYPTED PRIVATE KEY" || legacyEncrypted {
            guard let passphrase, !passphrase.isEmpty else {
                throw SignerError.invalidPEM("key is encrypted but no pass_phrase was provided")
            }
            if label == "ENCRYPTED PRIVATE KEY" {
                let plain = try decryptPKCS8(try decodeBody(trimmed), passphrase: passphrase)
                return try makeKey(pkcs1: try pkcs1(fromPKCS8: plain))
            }
            return try importEncrypted(pem: trimmed, passphrase: passphrase)
        }
        let der = try decodeBody(trimmed)
        switch label {
        case "RSA PRIVATE KEY":
            return try makeKey(pkcs1: der)
        case "PRIVATE KEY":
            return try makeKey(pkcs1: try pkcs1(fromPKCS8: der))
        default:
            throw SignerError.invalidPEM("unsupported PEM label \(label)")
        }
    }

    static func decodeBody(_ pem: String) throws -> Data {
        let b64 = pem.split(whereSeparator: \.isNewline)
            .filter { !$0.hasPrefix("-----") && !$0.contains(":") }
            .joined()
        guard let d = Data(base64Encoded: b64) else { throw SignerError.invalidPEM("base64 decode failed") }
        return d
    }

    static func makeKey(pkcs1: Data) throws -> SecKey {
        let attrs: [CFString: Any] = [kSecAttrKeyType: kSecAttrKeyTypeRSA, kSecAttrKeyClass: kSecAttrKeyClassPrivate]
        var err: Unmanaged<CFError>?
        guard let k = SecKeyCreateWithData(pkcs1 as CFData, attrs as CFDictionary, &err) else {
            throw SignerError.keyImportFailed(err?.takeRetainedValue().localizedDescription ?? "unknown")
        }
        return k
    }

    // Minimal DER reader: returns (tag, content range, end offset)
    private static func readTLV(_ d: Data, _ off: Int) throws -> (tag: UInt8, start: Int, end: Int) {
        let b = Array(d)
        guard off + 2 <= b.count else { throw SignerError.invalidPEM("truncated DER") }
        let tag = b[off]
        var len = Int(b[off + 1])
        var p = off + 2
        if len & 0x80 != 0 {
            let n = len & 0x7f
            guard n > 0, n <= 4, p + n <= b.count else { throw SignerError.invalidPEM("bad DER length") }
            len = 0
            for i in 0..<n { len = (len << 8) | Int(b[p + i]) }
            p += n
        }
        guard p + len <= b.count else { throw SignerError.invalidPEM("DER length overruns data") }
        return (tag, p, p + len)
    }

    /// PrivateKeyInfo ::= SEQUENCE { version INTEGER, algorithm SEQUENCE, privateKey OCTET STRING }
    static func pkcs1(fromPKCS8 d: Data) throws -> Data {
        let outer = try readTLV(d, 0)
        guard outer.tag == 0x30 else { throw SignerError.invalidPEM("PKCS#8: expected SEQUENCE") }
        let version = try readTLV(d, outer.start)
        guard version.tag == 0x02 else { throw SignerError.invalidPEM("PKCS#8: expected version") }
        let alg = try readTLV(d, version.end)
        guard alg.tag == 0x30 else { throw SignerError.invalidPEM("PKCS#8: expected algorithm") }
        let oct = try readTLV(d, alg.end)
        guard oct.tag == 0x04 else { throw SignerError.invalidPEM("PKCS#8: expected OCTET STRING") }
        return d.subdata(in: (d.startIndex + oct.start)..<(d.startIndex + oct.end))
    }

    /// Decodes a DER OBJECT IDENTIFIER body to dotted form.
    private static func oidString(_ d: Data, _ t: (tag: UInt8, start: Int, end: Int)) -> String {
        let b = Array(d)[t.start..<t.end]
        guard let f = b.first else { return "" }
        var parts = [Int(f) / 40, Int(f) % 40]
        var v = 0
        for x in b.dropFirst() { v = (v << 7) | Int(x & 0x7f); if x & 0x80 == 0 { parts.append(v); v = 0 } }
        return parts.map(String.init).joined(separator: ".")
    }

    private static func intValue(_ d: Data, _ t: (tag: UInt8, start: Int, end: Int)) -> Int {
        Array(d)[t.start..<t.end].reduce(0) { ($0 << 8) | Int($1) }
    }

    /// EncryptedPrivateKeyInfo with PBES2 (PBKDF2 + AES-CBC), as produced by `openssl pkcs8 -topk8 -v2 aes-*`.
    static func decryptPKCS8(_ d: Data, passphrase: String) throws -> Data {
        func unsupported(_ m: String) -> SignerError { .keyImportFailed("encrypted PKCS#8: \(m)") }
        let bytes = Array(d)
        let outer = try readTLV(d, 0)
        let algId = try readTLV(d, outer.start)
        let pbes2Oid = try readTLV(d, algId.start)
        guard oidString(d, pbes2Oid) == "1.2.840.113549.1.5.13" else { throw unsupported("only PBES2 is supported") }
        let params = try readTLV(d, pbes2Oid.end)
        let kdfSeq = try readTLV(d, params.start)
        let encSeq = try readTLV(d, kdfSeq.end)
        let kdfOid = try readTLV(d, kdfSeq.start)
        guard oidString(d, kdfOid) == "1.2.840.113549.1.5.12" else { throw unsupported("only PBKDF2 is supported") }
        let kdfParams = try readTLV(d, kdfOid.end)
        let salt = try readTLV(d, kdfParams.start)
        let iter = try readTLV(d, salt.end)
        var prf = CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA1)
        var cursor = iter.end
        while cursor < kdfParams.end {
            let t = try readTLV(d, cursor)
            if t.tag == 0x30 { // prf AlgorithmIdentifier
                let o = try readTLV(d, t.start)
                switch oidString(d, o) {
                case "1.2.840.113549.2.7": prf = CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA1)
                case "1.2.840.113549.2.9": prf = CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA256)
                case "1.2.840.113549.2.10": prf = CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA384)
                case "1.2.840.113549.2.11": prf = CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA512)
                default: throw unsupported("unsupported PBKDF2 PRF")
                }
            }
            cursor = t.end
        }
        let cipherOid = try readTLV(d, encSeq.start)
        let keyLen: Int
        switch oidString(d, cipherOid) {
        case "2.16.840.1.101.3.4.1.2": keyLen = 16
        case "2.16.840.1.101.3.4.1.22": keyLen = 24
        case "2.16.840.1.101.3.4.1.42": keyLen = 32
        default: throw unsupported("only AES-CBC ciphers are supported")
        }
        let iv = try readTLV(d, cipherOid.end)
        let cipherText = try readTLV(d, encSeq.end)
        guard cipherText.tag == 0x04, iv.tag == 0x04 else { throw unsupported("malformed structure") }

        var key = [UInt8](repeating: 0, count: keyLen)
        let pw = Array(passphrase.utf8)
        let rc = pw.withUnsafeBufferPointer { pwp in
            bytes[salt.start..<salt.end].withUnsafeBufferPointer { sp in
                pwp.withMemoryRebound(to: Int8.self) { pwi in
                    CCKeyDerivationPBKDF(CCPBKDFAlgorithm(kCCPBKDF2), pwi.baseAddress, pw.count, sp.baseAddress, sp.count,
                                         prf, UInt32(intValue(d, iter)), &key, keyLen)
                }
            }
        }
        guard rc == kCCSuccess else { throw unsupported("PBKDF2 failed (\(rc))") }
        let ct = Array(bytes[cipherText.start..<cipherText.end])
        var out = [UInt8](repeating: 0, count: ct.count + kCCBlockSizeAES128)
        var outLen = 0
        let ivBytes = Array(bytes[iv.start..<iv.end])
        let st = CCCrypt(CCOperation(kCCDecrypt), CCAlgorithm(kCCAlgorithmAES), CCOptions(kCCOptionPKCS7Padding),
                         key, keyLen, ivBytes, ct, ct.count, &out, out.count, &outLen)
        guard st == kCCSuccess else { throw SignerError.keyImportFailed("wrong pass_phrase (decryption failed)") }
        let plain = Data(out[0..<outLen])
        guard (try? readTLV(plain, 0))?.tag == 0x30 else { throw SignerError.keyImportFailed("wrong pass_phrase (bad plaintext)") }
        return plain
    }

    static func importEncrypted(pem: String, passphrase: String) throws -> SecKey {
        #if os(macOS)
        var params = SecItemImportExportKeyParameters()
        params.version = UInt32(SEC_KEY_IMPORT_EXPORT_PARAMS_VERSION)
        params.passphrase = Unmanaged.passUnretained(passphrase as CFString)
        var format = SecExternalFormat.formatPEMSequence
        var type = SecExternalItemType.itemTypePrivateKey
        var items: CFArray?
        let status = withUnsafePointer(to: &params) { p in
            SecItemImport(Data(pem.utf8) as CFData, nil, &format, &type, [], p, nil, &items)
        }
        guard status == errSecSuccess, let arr = items as? [Any], let first = arr.first else {
            throw SignerError.keyImportFailed("SecItemImport failed (OSStatus \(status)); wrong pass_phrase or unsupported cipher")
        }
        return first as! SecKey
        #else
        throw SignerError.keyImportFailed("encrypted keys are only supported on macOS")
        #endif
    }
}
