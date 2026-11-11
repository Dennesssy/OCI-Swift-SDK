import Foundation

// MARK: - MulticloudAlertAlertStatusEnum

public enum MulticloudAlertAlertStatusEnum: String, Codable, Sendable {
    case unacknowledged = "UNACKNOWLEDGED"
    case acknowledged = "ACKNOWLEDGED"
    case resolved = "RESOLVED"
}

public extension MulticloudAlertAlertStatusEnum {
    static var allValues: [MulticloudAlertAlertStatusEnum] { [.unacknowledged, .acknowledged, .resolved] }
    static var allStringValues: [String] { ["UNACKNOWLEDGED", "ACKNOWLEDGED", "RESOLVED"] }
    static func fromString(_ value: String) -> MulticloudAlertAlertStatusEnum? { MulticloudAlertAlertStatusEnum(rawValue: value) }
}