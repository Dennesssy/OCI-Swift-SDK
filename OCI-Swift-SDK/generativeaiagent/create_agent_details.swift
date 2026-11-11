import Foundation
import OCICommon

// MARK: - CreateAgentDetails

public struct CreateAgentDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var knowledgeBaseIds: [String]?
    public var welcomeMessage: String?
    public var llmConfig: LlmConfig?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, description, knowledgeBaseIds, welcomeMessage, llmConfig, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                knowledgeBaseIds: [String]? = nil,
                welcomeMessage: String? = nil,
                llmConfig: LlmConfig? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.knowledgeBaseIds = knowledgeBaseIds
        self.welcomeMessage = welcomeMessage
        self.llmConfig = llmConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
