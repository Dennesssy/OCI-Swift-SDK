import Foundation
import OCICommon

// MARK: - UpdateAgentDetails

public struct UpdateAgentDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var knowledgeBaseIds: [String]?
    public var welcomeMessage: String?
    public var llmConfig: LlmConfig?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, knowledgeBaseIds, welcomeMessage, llmConfig, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                knowledgeBaseIds: [String]? = nil,
                welcomeMessage: String? = nil,
                llmConfig: LlmConfig? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
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
