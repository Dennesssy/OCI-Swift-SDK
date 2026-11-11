import Foundation

// MARK: - NotificationSummary

public struct NotificationSummary: Codable, Sendable {

    public var notificationType: NotificationSummaryNotificationTypeEnum
    public var notificationText: String?
    public var id: String?
    public var timePublished: Date?

    private enum CodingKeys: String, CodingKey {
        case notificationType, notificationText, id, timePublished
    }

    public init(
                notificationType: NotificationSummaryNotificationTypeEnum,
                notificationText: String? = nil,
                id: String? = nil,
                timePublished: Date? = nil
    ) {
        self.notificationType = notificationType
        self.notificationText = notificationText
        self.id = id
        self.timePublished = timePublished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NotificationSummary: CustomStringConvertible {
    public var description: String { "NotificationSummary()" }
}