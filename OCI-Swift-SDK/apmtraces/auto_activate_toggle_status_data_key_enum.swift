import Foundation

// MARK: - AutoActivateToggleStatusDataKeyEnum

public enum AutoActivateToggleStatusDataKeyEnum: String, Codable, Sendable {
    case privateDataKey = "PRIVATE_DATA_KEY"
    case publicDataKey = "PUBLIC_DATA_KEY"
}

public extension AutoActivateToggleStatusDataKeyEnum {
    static var allValues: [AutoActivateToggleStatusDataKeyEnum] { [.privateDataKey, .publicDataKey] }
    static var allStringValues: [String] { ["PRIVATE_DATA_KEY", "PUBLIC_DATA_KEY"] }
    static func fromString(_ value: String) -> AutoActivateToggleStatusDataKeyEnum? { AutoActivateToggleStatusDataKeyEnum(rawValue: value) }
}