import Foundation

// MARK: - AdwAdminPasswordDetailsPasswordTypeEnum

public enum AdwAdminPasswordDetailsPasswordTypeEnum: String, Codable, Sendable {
    case plainText = "PLAIN_TEXT"
    case vaultSecret = "VAULT_SECRET"
}

public extension AdwAdminPasswordDetailsPasswordTypeEnum {
    static var allValues: [AdwAdminPasswordDetailsPasswordTypeEnum] { [.plainText, .vaultSecret] }
    static var allStringValues: [String] { ["PLAIN_TEXT", "VAULT_SECRET"] }
    static func fromString(_ value: String) -> AdwAdminPasswordDetailsPasswordTypeEnum? { AdwAdminPasswordDetailsPasswordTypeEnum(rawValue: value) }
}