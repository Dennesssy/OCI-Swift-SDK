import Foundation
import OCICommon

// MARK: - AgentEndpointSummary

public struct AgentEndpointSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var agentId: String?
    public var timeCreated: Date?
    public var lifecycleState: AgentEndpointLifecycleStateEnum
    public var displayName: String?
    public var description: String?
    public var contentModerationConfig: ContentModerationConfig?
    public var guardrailConfig: GuardrailConfig?
    public var metadata: [String: String]?
    public var humanInputConfig: HumanInputConfig?
    public var outputConfig: OutputConfig?
    public var shouldEnableTrace: Bool?
    public var shouldEnableCitation: Bool?
    public var shouldEnableSession: Bool?
    public var shouldEnableMultiLanguage: Bool?
    public var sessionConfig: SessionConfig?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var provisionedCapacityConfig: ProvisionedCapacityConfig?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, agentId, timeCreated, lifecycleState, displayName, description, contentModerationConfig, guardrailConfig, metadata, humanInputConfig, outputConfig, shouldEnableTrace, shouldEnableCitation, shouldEnableSession, shouldEnableMultiLanguage, sessionConfig, timeUpdated, lifecycleDetails, provisionedCapacityConfig, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                agentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: AgentEndpointLifecycleStateEnum,
                displayName: String? = nil,
                description: String? = nil,
                contentModerationConfig: ContentModerationConfig? = nil,
                guardrailConfig: GuardrailConfig? = nil,
                metadata: [String: String]? = nil,
                humanInputConfig: HumanInputConfig? = nil,
                outputConfig: OutputConfig? = nil,
                shouldEnableTrace: Bool? = nil,
                shouldEnableCitation: Bool? = nil,
                shouldEnableSession: Bool? = nil,
                shouldEnableMultiLanguage: Bool? = nil,
                sessionConfig: SessionConfig? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                provisionedCapacityConfig: ProvisionedCapacityConfig? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.agentId = agentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.description = description
        self.contentModerationConfig = contentModerationConfig
        self.guardrailConfig = guardrailConfig
        self.metadata = metadata
        self.humanInputConfig = humanInputConfig
        self.outputConfig = outputConfig
        self.shouldEnableTrace = shouldEnableTrace
        self.shouldEnableCitation = shouldEnableCitation
        self.shouldEnableSession = shouldEnableSession
        self.shouldEnableMultiLanguage = shouldEnableMultiLanguage
        self.sessionConfig = sessionConfig
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.provisionedCapacityConfig = provisionedCapacityConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
