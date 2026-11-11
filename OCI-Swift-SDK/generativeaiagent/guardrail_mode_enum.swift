import Foundation

// MARK: - GuardrailModeEnum

public enum GuardrailModeEnum: String, Codable, Sendable {
    case disable = "DISABLE"
    case block = "BLOCK"
    case inform = "INFORM"
}

public extension GuardrailModeEnum {
    static var allValues: [GuardrailModeEnum] { [.disable, .block, .inform] }
    static var allStringValues: [String] { ["DISABLE", "BLOCK", "INFORM"] }
    static func fromString(_ value: String) -> GuardrailModeEnum? { GuardrailModeEnum(rawValue: value) }
}