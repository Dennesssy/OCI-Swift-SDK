import Foundation

// MARK: - UpdateProjectNotificationPreferenceDetails

public struct UpdateProjectNotificationPreferenceDetails: Codable, Sendable {

    public var notificationPreference: ProjectNotificationPreferenceNotificationPreferenceEnum

    private enum CodingKeys: String, CodingKey {
        case notificationPreference
    }

    public init(
                notificationPreference: ProjectNotificationPreferenceNotificationPreferenceEnum
    ) {
        self.notificationPreference = notificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectNotificationPreferenceDetails: CustomStringConvertible {
    public var description: String { "UpdateProjectNotificationPreferenceDetails()" }
}