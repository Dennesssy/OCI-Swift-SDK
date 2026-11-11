import Foundation
import OCICommon

// MARK: - CreateKnowledgeBaseDetails

public struct CreateKnowledgeBaseDetails: Codable, Sendable {

    public var indexConfig: JSONValue
    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case indexConfig, compartmentId, displayName, description, freeformTags, definedTags
    }

    public init(
                indexConfig: JSONValue,
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.indexConfig = indexConfig
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
