import Foundation

// MARK: - RepositoryNotificationPreference

public struct RepositoryNotificationPreference: Codable, Sendable {

    public var repositoryId: String?
    public var userId: String?
    public var notificationPreference: RepositoryNotificationPreferenceNotificationPreferenceEnum

    private enum CodingKeys: String, CodingKey {
        case repositoryId, userId, notificationPreference
    }

    public init(
                repositoryId: String? = nil,
                userId: String? = nil,
                notificationPreference: RepositoryNotificationPreferenceNotificationPreferenceEnum
    ) {
        self.repositoryId = repositoryId
        self.userId = userId
        self.notificationPreference = notificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryNotificationPreference: CustomStringConvertible {
    public var description: String { "RepositoryNotificationPreference()" }
}