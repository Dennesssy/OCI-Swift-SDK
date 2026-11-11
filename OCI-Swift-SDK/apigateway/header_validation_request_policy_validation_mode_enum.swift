import Foundation

// MARK: - HeaderValidationRequestPolicyValidationModeEnum

public enum HeaderValidationRequestPolicyValidationModeEnum: String, Codable, Sendable {
    case enforcing = "ENFORCING"
    case permissive = "PERMISSIVE"
    case disabled = "DISABLED"
}

public extension HeaderValidationRequestPolicyValidationModeEnum {
    static var allValues: [HeaderValidationRequestPolicyValidationModeEnum] { [.enforcing, .permissive, .disabled] }
    static var allStringValues: [String] { ["ENFORCING", "PERMISSIVE", "DISABLED"] }
    static func fromString(_ value: String) -> HeaderValidationRequestPolicyValidationModeEnum? { HeaderValidationRequestPolicyValidationModeEnum(rawValue: value) }
}