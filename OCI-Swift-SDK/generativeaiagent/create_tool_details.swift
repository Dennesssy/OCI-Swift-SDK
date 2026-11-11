import Foundation
import OCICommon

// MARK: - CreateToolDetails

public struct CreateToolDetails: Codable, Sendable {

    public var description: String?
    public var agentId: String?
    public var compartmentId: String?
    public var toolConfig: JSONValue
    public var displayName: String?
    public var metadata: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, agentId, compartmentId, toolConfig, displayName, metadata, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                agentId: String? = nil,
                compartmentId: String? = nil,
                toolConfig: JSONValue,
                displayName: String? = nil,
                metadata: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.agentId = agentId
        self.compartmentId = compartmentId
        self.toolConfig = toolConfig
        self.displayName = displayName
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
