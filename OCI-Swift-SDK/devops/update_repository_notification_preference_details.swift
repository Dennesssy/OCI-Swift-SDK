import Foundation

// MARK: - UpdateRepositoryNotificationPreferenceDetails

public struct UpdateRepositoryNotificationPreferenceDetails: Codable, Sendable {

    public var notificationPreference: RepositoryNotificationPreferenceNotificationPreferenceEnum

    private enum CodingKeys: String, CodingKey {
        case notificationPreference
    }

    public init(
                notificationPreference: RepositoryNotificationPreferenceNotificationPreferenceEnum
    ) {
        self.notificationPreference = notificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositoryNotificationPreferenceDetails: CustomStringConvertible {
    public var description: String { "UpdateRepositoryNotificationPreferenceDetails()" }
}