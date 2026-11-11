import Foundation

// MARK: - OnPremiseVantagePointWorkerStatusEnum

public enum OnPremiseVantagePointWorkerStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension OnPremiseVantagePointWorkerStatusEnum {
    static var allValues: [OnPremiseVantagePointWorkerStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> OnPremiseVantagePointWorkerStatusEnum? { OnPremiseVantagePointWorkerStatusEnum(rawValue: value) }
}