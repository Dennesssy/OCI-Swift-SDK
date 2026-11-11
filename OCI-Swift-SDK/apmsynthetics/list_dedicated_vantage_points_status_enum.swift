import Foundation

// MARK: - ListDedicatedVantagePointsStatusEnum

public enum ListDedicatedVantagePointsStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension ListDedicatedVantagePointsStatusEnum {
    static var allValues: [ListDedicatedVantagePointsStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> ListDedicatedVantagePointsStatusEnum? { ListDedicatedVantagePointsStatusEnum(rawValue: value) }
}