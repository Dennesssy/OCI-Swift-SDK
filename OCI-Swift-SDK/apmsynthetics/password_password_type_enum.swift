import Foundation

// MARK: - PasswordPasswordTypeEnum

public enum PasswordPasswordTypeEnum: String, Codable, Sendable {
    case inText = "IN_TEXT"
    case vaultSecretId = "VAULT_SECRET_ID"
}

public extension PasswordPasswordTypeEnum {
    static var allValues: [PasswordPasswordTypeEnum] { [.inText, .vaultSecretId] }
    static var allStringValues: [String] { ["IN_TEXT", "VAULT_SECRET_ID"] }
    static func fromString(_ value: String) -> PasswordPasswordTypeEnum? { PasswordPasswordTypeEnum(rawValue: value) }
}