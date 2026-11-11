import Foundation

// MARK: - PullRequestNotificationPreference

public struct PullRequestNotificationPreference: Codable, Sendable {

    public var pullRequestId: String?
    public var userId: String?
    public var notificationPreference: PullRequestNotificationPreferenceNotificationPreferenceEnum

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, userId, notificationPreference
    }

    public init(
                pullRequestId: String? = nil,
                userId: String? = nil,
                notificationPreference: PullRequestNotificationPreferenceNotificationPreferenceEnum
    ) {
        self.pullRequestId = pullRequestId
        self.userId = userId
        self.notificationPreference = notificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestNotificationPreference: CustomStringConvertible {
    public var description: String { "PullRequestNotificationPreference()" }
}