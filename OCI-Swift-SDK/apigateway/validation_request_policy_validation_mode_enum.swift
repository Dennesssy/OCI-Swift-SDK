import Foundation

// MARK: - ValidationRequestPolicyValidationModeEnum

public enum ValidationRequestPolicyValidationModeEnum: String, Codable, Sendable {
    case enforcing = "ENFORCING"
    case permissive = "PERMISSIVE"
    case disabled = "DISABLED"
}

public extension ValidationRequestPolicyValidationModeEnum {
    static var allValues: [ValidationRequestPolicyValidationModeEnum] { [.enforcing, .permissive, .disabled] }
    static var allStringValues: [String] { ["ENFORCING", "PERMISSIVE", "DISABLED"] }
    static func fromString(_ value: String) -> ValidationRequestPolicyValidationModeEnum? { ValidationRequestPolicyValidationModeEnum(rawValue: value) }
}