import Foundation

// MARK: - SecretDetailTypeEnum

public enum SecretDetailTypeEnum: String, Codable, Sendable {
    case idcsSecret = "IDCS_SECRET"
    case basicAuthSecret = "BASIC_AUTH_SECRET"
}

public extension SecretDetailTypeEnum {
    static var allValues: [SecretDetailTypeEnum] { [.idcsSecret, .basicAuthSecret] }
    static var allStringValues: [String] { ["IDCS_SECRET", "BASIC_AUTH_SECRET"] }
    static func fromString(_ value: String) -> SecretDetailTypeEnum? { SecretDetailTypeEnum(rawValue: value) }
}