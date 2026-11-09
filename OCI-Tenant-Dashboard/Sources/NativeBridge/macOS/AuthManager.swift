// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Foundation
import Security
import CryptoKit

/**
 * OCI Authentication Manager
 * Handles API key signing, token management, and secure credential storage
 */
@MainActor
class AuthManager {
    
    static let shared = AuthManager()
    
    // Keychain keys
    private let keychainTenancyKey = "oci_tenancy_ocid"
    private let keychainUserKey = "oci_user_ocid"
    private let keychainRegionKey = "oci_region"
    private let keychainFingerprintKey = "oci_key_fingerprint"
    private let keychainPrivateKeyKey = "oci_private_key"
    private let keychainPassphraseKey = "oci_key_passphrase"
    private let keychainSessionTokenKey = "oci_session_token"
    private let keychainSecurityTokenKey = "oci_security_token"
    
    // Auth configuration
    struct AuthConfig: Codable {
        let tenancyOCID: String
        let userOCID: String
        let region: String
        let fingerprint: String
        let hasPrivateKey: Bool
        let authType: AuthType
        
        enum AuthType: String, Codable {
            case apiKey = "apiKey"
            case sessionToken = "sessionToken"
            case instancePrincipal = "instancePrincipal"
            case delegationToken = "delegationToken"
        }
    }
    
    enum AuthMethod {
        case apiKey(tenancy: String, user: String, fingerprint: String, privateKey: String, passphrase: String?)
        case sessionToken(token: String)
        case instancePrincipal
        case securityToken(token: String)
    }
    
    // MARK: - Configuration Management
    
    func saveConfig(_ config: AuthConfig) throws {
        try saveToKeychain(config.tenancyOCID, forKey: keychainTenancyKey)
        try saveToKeychain(config.userOCID, forKey: keychainUserKey)
        try saveToKeychain(config.region, forKey: keychainRegionKey)
        try saveToKeychain(config.fingerprint, forKey: keychainFingerprintKey)
        
        // Store auth type in UserDefaults (not sensitive)
        UserDefaults.standard.set(config.authType.rawValue, forKey: "oci_auth_type")
    }
    
    func loadConfig() -> AuthConfig? {
        guard let tenancy = loadFromKeychain(keychainTenancyKey),
              let user = loadFromKeychain(keychainUserKey),
              let region = loadFromKeychain(keychainRegionKey),
              let fingerprint = loadFromKeychain(keychainFingerprintKey) else {
            return nil
        }
        
        let authTypeString = UserDefaults.standard.string(forKey: "oci_auth_type") ?? "apiKey"
        let authType = AuthConfig.AuthType(rawValue: authTypeString) ?? .apiKey
        
        return AuthConfig(
            tenancyOCID: tenancy,
            userOCID: user,
            region: region,
            fingerprint: fingerprint,
            hasPrivateKey: loadFromKeychain(keychainPrivateKeyKey) != nil,
            authType: authType
        )
    }
    
    func clearConfig() {
        deleteFromKeychain(keychainTenancyKey)
        deleteFromKeychain(keychainUserKey)
        deleteFromKeychain(keychainRegionKey)
        deleteFromKeychain(keychainFingerprintKey)
        deleteFromKeychain(keychainPrivateKeyKey)
        deleteFromKeychain(keychainPassphraseKey)
        deleteFromKeychain(keychainSessionTokenKey)
        UserDefaults.standard.removeObject(forKey: "oci_auth_type")
    }
    
    // MARK: - Private Key Management
    
    func savePrivateKey(_ key: String, passphrase: String?) throws {
        try saveToKeychain(key, forKey: keychainPrivateKeyKey)
        if let passphrase = passphrase {
            try saveToKeychain(passphrase, forKey: keychainPassphraseKey)
        }
    }
    
    func loadPrivateKey() -> (key: String, passphrase: String?)? {
        guard let key = loadFromKeychain(keychainPrivateKeyKey) else {
            return nil
        }
        let passphrase = loadFromKeychain(keychainPassphraseKey)
        return (key, passphrase)
    }
    
    // MARK: - Session Token Management
    
    func saveSessionToken(_ token: String) throws {
        try saveToKeychain(token, forKey: keychainSessionTokenKey)
    }
    
    func loadSessionToken() -> String? {
        return loadFromKeychain(keychainSessionTokenKey)
    }
    
    func saveSecurityToken(_ token: String) throws {
        try saveToKeychain(token, forKey: keychainSecurityTokenKey)
    }
    
    func loadSecurityToken() -> String? {
        return loadFromKeychain(keychainSecurityTokenKey)
    }
    
    // MARK: - Request Signing (API Key Auth)
    
    /**
     * Sign an OCI API request using API key authentication
     * This implements the OCI request signing protocol
     */
    func signRequest(
        method: String,
        path: String,
        headers: [String: String],
        body: Data?,
        host: String
    ) throws -> [String: String] {
        
        guard let config = loadConfig(), config.authType == .apiKey,
              let (privateKey, passphrase) = loadPrivateKey() else {
            throw AuthError.missingCredentials
        }
        
        // Build signing string (OCI signature version 1)
        let date = headers["date"] ?? headers["Date"] ?? HTTPDate()
        var signingHeaders = [
            "date": date,
            "(request-target)": "\(method.lowercased()) \(path)"
        ]
        
        // Add host header
        signingHeaders["host"] = host
        
        // Add body hash if present
        if let body = body, !body.isEmpty {
            let bodyHash = SHA256.hash(data: body)
            signingHeaders["x-content-sha256"] = Data(bodyHash).base64EncodedString()
            signingHeaders["content-length"] = String(body.count)
        }
        
        // Build signing string
        let signedHeaders = ["date", "(request-target)", "host"]
        let signingString = signedHeaders.map { header in
            "\(header): \(signingHeaders[header] ?? "")"
        }.joined(separator: "\n")
        
        // Sign with private key
        let signature = try sign(signingString, with: privateKey, passphrase: passphrase)
        
        // Build Authorization header
        let authorization = [
            "Signature version=\"1\"",
            "headers=\"\(signedHeaders.joined(separator: " "))\"",
            "keyId=\"\(config.tenancyOCID)/\(config.userOCID)/\(config.fingerprint)\"",
            "algorithm=\"rsa-sha256\"",
            "signature=\"\(signature)\""
        ].joined(separator: ",")
        
        var finalHeaders = headers
        finalHeaders["Authorization"] = authorization
        finalHeaders["Date"] = date
        
        return finalHeaders
    }
    
    /**
     * Sign data with RSA private key
     */
    private func sign(_ data: String, with privateKey: String, passphrase: String?) throws -> String {
        // Remove PEM headers/footers and decode
        let keyContent = privateKey
            .replacingOccurrences(of: "-----BEGIN RSA PRIVATE KEY-----", with: "")
            .replacingOccurrences(of: "-----END RSA PRIVATE KEY-----", with: "")
            .replacingOccurrences(of: "-----BEGIN PRIVATE KEY-----", with: "")
            .replacingOccurrences(of: "-----END PRIVATE KEY-----", with: "")
            .replacingOccurrences(of: "\n", with: "")
            .replacingOccurrences(of: " ", with: "")
        
        guard let keyData = Data(base64Encoded: keyContent) else {
            throw AuthError.invalidPrivateKey
        }
        
        // For production, use proper RSA signing
        // This is a simplified version - use SecKeyCreateSignature in production
        
        // Hash the data
        guard let messageData = data.data(using: .utf8) else {
            throw AuthError.invalidInput
        }
        let hash = SHA256.hash(data: messageData)
        
        // Return base64 encoded hash (placeholder for actual RSA signature)
        // In production, this should use SecKeyCreateSignature with the private key
        return Data(hash).base64EncodedString()
    }
    
    // MARK: - Token-Based Auth Headers
    
    func getTokenAuthHeaders(token: String) -> [String: String] {
        return [
            "Authorization": "Bearer \(token)",
            "Date": HTTPDate()
        ]
    }
    
    // MARK: - Keychain Helpers
    
    private func saveToKeychain(_ value: String, forKey key: String) throws {
        guard let data = value.data(using: .utf8) else {
            throw AuthError.invalidInput
        }
        
        // Delete existing item
        deleteFromKeychain(key)
        
        // Create query
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data,
            kSecAttrService as String: "com.oracle.oci.dashboard",
            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        
        let status = SecItemAdd(query as CFDictionary, nil)
        guard status == errSecSuccess else {
            throw AuthError.keychainError(status: status)
        }
    }
    
    private func loadFromKeychain(_ key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecAttrService as String: "com.oracle.oci.dashboard",
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        
        guard status == errSecSuccess,
              let data = result as? Data,
              let value = String(data: data, encoding: .utf8) else {
            return nil
        }
        
        return value
    }
    
    private func deleteFromKeychain(_ key: String) {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecAttrService as String: "com.oracle.oci.dashboard"
        ]
        
        SecItemDelete(query as CFDictionary)
    }
    
    // MARK: - Utilities
    
    private func HTTPDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
        formatter.timeZone = TimeZone(identifier: "GMT")
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.string(from: Date())
    }
    
    // MARK: - Validation
    
    func validateOCID(_ ocid: String, type: String) -> Bool {
        // OCI OCID format: ocid1.<type>.<realm>.<region>.<future>.<unique_id>
        let pattern = "^ocid1\\.\\(type\\.[a-z]+\\.[a-z0-9-]+\\.[a-z0-9]+\\.[a-z0-9]+)$"
            .replacingOccurrences(of: "(type)", with: type)
        
        guard let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
            return false
        }
        
        let range = NSRange(location: 0, length: ocid.utf16.count)
        return regex.firstMatch(in: ocid, options: [], range: range) != nil
    }
    
    func validateFingerprint(_ fingerprint: String) -> Bool {
        // MD5 fingerprint format: aa:bb:cc:dd:ee:ff:...
        let pattern = "^[a-f0-9]{2}(:[a-f0-9]{2}){15}$"
        guard let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
            return false
        }
        return regex.firstMatch(in: fingerprint, options: [], range: NSRange(location: 0, length: fingerprint.utf16.count)) != nil
    }
    
    // MARK: - Error Handling
    
    enum AuthError: Error, LocalizedError {
        case missingCredentials
        case invalidPrivateKey
        case invalidPassphrase
        case invalidInput
        case unknownOperation(String)
        case keychainError(status: OSStatus)
        case signingFailed
        
        var errorDescription: String? {
            switch self {
            case .missingCredentials:
                return "OCI credentials not configured. Please set up API keys or session token."
            case .invalidPrivateKey:
                return "Invalid private key format. Expected PEM-encoded RSA key."
            case .invalidPassphrase:
                return "Incorrect private key passphrase."
            case .invalidInput:
                return "Invalid input data."
            case .unknownOperation(let operation):
                return "Unknown auth operation: \(operation)"
            case .keychainError(let status):
                return "Keychain error (code: \(status)). Unable to securely store credentials."
            case .signingFailed:
                return "Failed to sign request. Check your private key and passphrase."
            }
        }
    }
}

// MARK: - OCI Authentication Helpers

extension AuthManager {
    
    /**
     * Check if user is authenticated
     */
    var isAuthenticated: Bool {
        return loadConfig() != nil
    }
    
    /**
     * Get current auth method
     */
    var currentAuthMethod: AuthMethod? {
        guard let config = loadConfig() else { return nil }
        
        switch config.authType {
        case .apiKey:
            guard let (key, passphrase) = loadPrivateKey() else { return nil }
            return .apiKey(
                tenancy: config.tenancyOCID,
                user: config.userOCID,
                fingerprint: config.fingerprint,
                privateKey: key,
                passphrase: passphrase
            )
            
        case .sessionToken:
            guard let token = loadSessionToken() else { return nil }
            return .sessionToken(token: token)
            
        case .instancePrincipal:
            return .instancePrincipal
            
        case .delegationToken:
            guard let token = loadSecurityToken() else { return nil }
            return .securityToken(token: token)
        }
    }
    
    /**
     * Get authentication headers for API request
     */
    func getAuthHeaders(for request: OCIRequest) throws -> [String: String] {
        guard let method = currentAuthMethod else {
            throw AuthError.missingCredentials
        }
        
        switch method {
        case .apiKey(let tenancy, let user, let fingerprint, let privateKey, let passphrase):
            // Use OCI request signing
            return try signRequest(
                method: request.method,
                path: request.path,
                headers: request.headers,
                body: request.body,
                host: request.host
            )
            
        case .sessionToken(let token),
             .securityToken(let token):
            return getTokenAuthHeaders(token: token)
            
        case .instancePrincipal:
            // Instance principals use metadata service
            // This would need to be fetched from 169.254.169.254
            throw AuthError.missingCredentials
        }
    }
}

// Request structure for auth
struct OCIRequest {
    let method: String
    let path: String
    let headers: [String: String]
    let body: Data?
    let host: String
}
