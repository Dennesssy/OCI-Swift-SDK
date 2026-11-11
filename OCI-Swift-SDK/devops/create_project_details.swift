import Foundation
import OCICommon

// MARK: - CreateProjectDetails

public struct CreateProjectDetails: Codable, Sendable {

    public var name: String?
    public var notificationConfig: NotificationConfig?
    public var compartmentId: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, notificationConfig, compartmentId, description, freeformTags, definedTags
    }

    public init(
                name: String? = nil,
                notificationConfig: NotificationConfig? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.notificationConfig = notificationConfig
        self.compartmentId = compartmentId
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
