import Foundation
import OCICommon

// MARK: - UpdateDigitalTwinRelationshipDetails

public struct UpdateDigitalTwinRelationshipDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var content: [String: JSONValue]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, content, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                content: [String: JSONValue]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.content = content
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
