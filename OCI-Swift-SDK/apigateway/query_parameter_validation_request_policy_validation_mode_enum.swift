import Foundation

// MARK: - QueryParameterValidationRequestPolicyValidationModeEnum

public enum QueryParameterValidationRequestPolicyValidationModeEnum: String, Codable, Sendable {
    case enforcing = "ENFORCING"
    case permissive = "PERMISSIVE"
    case disabled = "DISABLED"
}

public extension QueryParameterValidationRequestPolicyValidationModeEnum {
    static var allValues: [QueryParameterValidationRequestPolicyValidationModeEnum] { [.enforcing, .permissive, .disabled] }
    static var allStringValues: [String] { ["ENFORCING", "PERMISSIVE", "DISABLED"] }
    static func fromString(_ value: String) -> QueryParameterValidationRequestPolicyValidationModeEnum? { QueryParameterValidationRequestPolicyValidationModeEnum(rawValue: value) }
}