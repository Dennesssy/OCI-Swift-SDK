import Foundation

// MARK: - AutoActivateStatusDataKeyEnum

public enum AutoActivateStatusDataKeyEnum: String, Codable, Sendable {
    case privateDataKey = "PRIVATE_DATA_KEY"
    case publicDataKey = "PUBLIC_DATA_KEY"
}

public extension AutoActivateStatusDataKeyEnum {
    static var allValues: [AutoActivateStatusDataKeyEnum] { [.privateDataKey, .publicDataKey] }
    static var allStringValues: [String] { ["PRIVATE_DATA_KEY", "PUBLIC_DATA_KEY"] }
    static func fromString(_ value: String) -> AutoActivateStatusDataKeyEnum? { AutoActivateStatusDataKeyEnum(rawValue: value) }
}