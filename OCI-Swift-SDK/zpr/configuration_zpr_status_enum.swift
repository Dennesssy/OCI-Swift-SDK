import Foundation

// MARK: - ConfigurationZprStatusEnum

public enum ConfigurationZprStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension ConfigurationZprStatusEnum {
    static var allValues: [ConfigurationZprStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> ConfigurationZprStatusEnum? { ConfigurationZprStatusEnum(rawValue: value) }
}