import Foundation
import OCICommon

// MARK: - UpdateGitlabServerTriggerDetails

public struct UpdateGitlabServerTriggerDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var actions: [JSONValue]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, actions, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                actions: [JSONValue]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.actions = actions
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
