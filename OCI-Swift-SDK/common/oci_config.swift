import Foundation

public enum ConfigError: Error, Sendable, Equatable {
    case fileNotFound(String)
    case profileNotFound(String)
    case missingField(profile: String, field: String)
}

/// Reads an OCI CLI/SDK config file (`~/.oci/config`). Keys of the `DEFAULT` profile act as
/// fallbacks for other profiles, matching the Go SDK and OCI CLI.
public struct ConfigFileProvider: common.ConfigurationProvider {
    public let profile: String
    public let user: String
    public let fingerprint: String
    public let tenancy: String
    public let keyFile: String
    public let passphrase: String?
    private let regionValue: String?

    public var region: String? { regionValue }

    public static var defaultConfigPath: String { NSString(string: "~/.oci/config").expandingTildeInPath }

    public init(path: String = ConfigFileProvider.defaultConfigPath, profile: String = "DEFAULT") throws {
        let expanded = NSString(string: path).expandingTildeInPath
        guard let data = FileManager.default.contents(atPath: expanded), let text = String(data: data, encoding: .utf8) else {
            throw ConfigError.fileNotFound(expanded)
        }
        try self.init(contents: text, profile: profile)
    }

    public init(contents: String, profile: String = "DEFAULT") throws {
        let profiles = Self.parse(contents)
        guard let section = profiles[profile] ?? (profile == "DEFAULT" ? [:] : nil) else {
            throw ConfigError.profileNotFound(profile)
        }
        if profiles[profile] == nil && profiles["DEFAULT"] == nil { throw ConfigError.profileNotFound(profile) }
        let merged = (profiles["DEFAULT"] ?? [:]).merging(section) { _, new in new }
        func req(_ k: String) throws -> String {
            guard let v = merged[k], !v.isEmpty else { throw ConfigError.missingField(profile: profile, field: k) }
            return v
        }
        self.profile = profile
        self.user = try req("user")
        self.fingerprint = try req("fingerprint")
        self.tenancy = try req("tenancy")
        self.keyFile = NSString(string: try req("key_file")).expandingTildeInPath
        self.regionValue = merged["region"].flatMap { $0.isEmpty ? nil : $0 }
        self.passphrase = (merged["pass_phrase"] ?? merged["passphrase"]).flatMap { $0.isEmpty ? nil : $0 }
    }

    /// INI parser: `[name]` sections, `key=value`, `#`/`;` comments, whitespace-trimmed.
    static func parse(_ text: String) -> [String: [String: String]] {
        var out: [String: [String: String]] = [:]
        var current: String?
        for raw in text.split(whereSeparator: \.isNewline) {
            let line = raw.trimmingCharacters(in: .whitespaces)
            if line.isEmpty || line.hasPrefix("#") || line.hasPrefix(";") { continue }
            if line.hasPrefix("["), line.hasSuffix("]") {
                current = String(line.dropFirst().dropLast()).trimmingCharacters(in: .whitespaces)
                if let c = current, out[c] == nil { out[c] = [:] }
                continue
            }
            guard let cur = current, let eq = line.firstIndex(of: "=") else { continue }
            let k = line[..<eq].trimmingCharacters(in: .whitespaces)
            let v = line[line.index(after: eq)...].trimmingCharacters(in: .whitespaces)
            out[cur, default: [:]][k] = v
        }
        return out
    }

    public func privateKeyPEM() throws -> String {
        guard let d = FileManager.default.contents(atPath: keyFile), let s = String(data: d, encoding: .utf8) else {
            throw ConfigError.fileNotFound(keyFile)
        }
        return s
    }

    public func makeSigner() throws -> APIKeySigner { try APIKeySigner(provider: self) }
}
