import Foundation

// MARK: - UpdatePullRequestNotificationPreferenceDetails

public struct UpdatePullRequestNotificationPreferenceDetails: Codable, Sendable {

    public var notificationPreference: PullRequestNotificationPreferenceNotificationPreferenceEnum

    private enum CodingKeys: String, CodingKey {
        case notificationPreference
    }

    public init(
                notificationPreference: PullRequestNotificationPreferenceNotificationPreferenceEnum
    ) {
        self.notificationPreference = notificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestNotificationPreferenceDetails: CustomStringConvertible {
    public var description: String { "UpdatePullRequestNotificationPreferenceDetails()" }
}