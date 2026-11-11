import Foundation
import OCICommon

// MARK: - UpdateProjectDetails

public struct UpdateProjectDetails: Codable, Sendable {

    public var description: String?
    public var notificationConfig: NotificationConfig?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, notificationConfig, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                notificationConfig: NotificationConfig? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.notificationConfig = notificationConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
