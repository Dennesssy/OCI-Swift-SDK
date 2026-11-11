import Foundation
import OCICommon

// MARK: - UpdateToolDetails

public struct UpdateToolDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var toolConfig: JSONValue?
    public var metadata: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, toolConfig, metadata, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                toolConfig: JSONValue? = nil,
                metadata: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.toolConfig = toolConfig
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
