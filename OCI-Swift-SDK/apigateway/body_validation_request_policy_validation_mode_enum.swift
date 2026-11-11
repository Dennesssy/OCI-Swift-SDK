import Foundation

// MARK: - BodyValidationRequestPolicyValidationModeEnum

public enum BodyValidationRequestPolicyValidationModeEnum: String, Codable, Sendable {
    case enforcing = "ENFORCING"
    case permissive = "PERMISSIVE"
    case disabled = "DISABLED"
}

public extension BodyValidationRequestPolicyValidationModeEnum {
    static var allValues: [BodyValidationRequestPolicyValidationModeEnum] { [.enforcing, .permissive, .disabled] }
    static var allStringValues: [String] { ["ENFORCING", "PERMISSIVE", "DISABLED"] }
    static func fromString(_ value: String) -> BodyValidationRequestPolicyValidationModeEnum? { BodyValidationRequestPolicyValidationModeEnum(rawValue: value) }
}