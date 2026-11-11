import Foundation
import OCICommon

// MARK: - UpdateDevopsCodeRepositoryTriggerDetails

public struct UpdateDevopsCodeRepositoryTriggerDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var actions: [JSONValue]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var repositoryId: String?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, actions, freeformTags, definedTags, repositoryId
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                actions: [JSONValue]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                repositoryId: String? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.actions = actions
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.repositoryId = repositoryId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
