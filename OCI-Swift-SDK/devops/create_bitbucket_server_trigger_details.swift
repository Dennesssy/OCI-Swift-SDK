import Foundation
import OCICommon

// MARK: - CreateBitbucketServerTriggerDetails

public struct CreateBitbucketServerTriggerDetails: Codable, Sendable {

    public var projectId: String?
    public var actions: [JSONValue]
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case projectId, actions, displayName, description, freeformTags, definedTags
    }

    public init(
                projectId: String? = nil,
                actions: [JSONValue],
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.projectId = projectId
        self.actions = actions
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
