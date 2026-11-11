import Foundation

// MARK: - ListMonitorsStatusEnum

public enum ListMonitorsStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
    case invalid = "INVALID"
}

public extension ListMonitorsStatusEnum {
    static var allValues: [ListMonitorsStatusEnum] { [.enabled, .disabled, .invalid] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED", "INVALID"] }
    static func fromString(_ value: String) -> ListMonitorsStatusEnum? { ListMonitorsStatusEnum(rawValue: value) }
}