import Foundation

// MARK: - ListMulticloudAlertsAlertStatusEnum

public enum ListMulticloudAlertsAlertStatusEnum: String, Codable, Sendable {
    case unacknowledged = "UNACKNOWLEDGED"
    case acknowledged = "ACKNOWLEDGED"
    case resolved = "RESOLVED"
}

public extension ListMulticloudAlertsAlertStatusEnum {
    static var allValues: [ListMulticloudAlertsAlertStatusEnum] { [.unacknowledged, .acknowledged, .resolved] }
    static var allStringValues: [String] { ["UNACKNOWLEDGED", "ACKNOWLEDGED", "RESOLVED"] }
    static func fromString(_ value: String) -> ListMulticloudAlertsAlertStatusEnum? { ListMulticloudAlertsAlertStatusEnum(rawValue: value) }
}