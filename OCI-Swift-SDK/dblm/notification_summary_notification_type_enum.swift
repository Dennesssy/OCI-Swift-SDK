import Foundation

// MARK: - NotificationSummaryNotificationTypeEnum

public enum NotificationSummaryNotificationTypeEnum: String, Codable, Sendable {
    case cve = "CVE"
    case advisory = "ADVISORY"
    case patch = "PATCH"
}

public extension NotificationSummaryNotificationTypeEnum {
    static var allValues: [NotificationSummaryNotificationTypeEnum] { [.cve, .advisory, .patch] }
    static var allStringValues: [String] { ["CVE", "ADVISORY", "PATCH"] }
    static func fromString(_ value: String) -> NotificationSummaryNotificationTypeEnum? { NotificationSummaryNotificationTypeEnum(rawValue: value) }
}