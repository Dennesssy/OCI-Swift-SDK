import Foundation
import OCICommon

// MARK: - UpdateKnowledgeBaseDetails

public struct UpdateKnowledgeBaseDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var indexConfig: JSONValue?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, indexConfig, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                indexConfig: JSONValue? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.indexConfig = indexConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
