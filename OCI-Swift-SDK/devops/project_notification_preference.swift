import Foundation

// MARK: - ProjectNotificationPreference

public struct ProjectNotificationPreference: Codable, Sendable {

    public var projectId: String?
    public var userId: String?
    public var notificationPreference: ProjectNotificationPreferenceNotificationPreferenceEnum

    private enum CodingKeys: String, CodingKey {
        case projectId, userId, notificationPreference
    }

    public init(
                projectId: String? = nil,
                userId: String? = nil,
                notificationPreference: ProjectNotificationPreferenceNotificationPreferenceEnum
    ) {
        self.projectId = projectId
        self.userId = userId
        self.notificationPreference = notificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProjectNotificationPreference: CustomStringConvertible {
    public var description: String { "ProjectNotificationPreference()" }
}