import Foundation
import OCICommon

// MARK: - Agent

public struct Agent: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: AgentLifecycleStateEnum
    public var displayName: String?
    public var description: String?
    public var knowledgeBaseIds: [String]?
    public var welcomeMessage: String?
    public var llmConfig: LlmConfig?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, timeCreated, lifecycleState, displayName, description, knowledgeBaseIds, welcomeMessage, llmConfig, timeUpdated, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: AgentLifecycleStateEnum,
                displayName: String? = nil,
                description: String? = nil,
                knowledgeBaseIds: [String]? = nil,
                welcomeMessage: String? = nil,
                llmConfig: LlmConfig? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.description = description
        self.knowledgeBaseIds = knowledgeBaseIds
        self.welcomeMessage = welcomeMessage
        self.llmConfig = llmConfig
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
