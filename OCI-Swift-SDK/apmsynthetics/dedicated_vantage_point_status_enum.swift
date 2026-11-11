import Foundation

// MARK: - DedicatedVantagePointStatusEnum

public enum DedicatedVantagePointStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension DedicatedVantagePointStatusEnum {
    static var allValues: [DedicatedVantagePointStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> DedicatedVantagePointStatusEnum? { DedicatedVantagePointStatusEnum(rawValue: value) }
}