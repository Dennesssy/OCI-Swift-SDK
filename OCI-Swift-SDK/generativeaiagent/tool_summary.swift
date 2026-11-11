import Foundation
import OCICommon

// MARK: - ToolSummary

public struct ToolSummary: Codable, Sendable {

    public var id: String?
    public var lifecycleState: ToolLifecycleStateEnum
    public var timeCreated: Date?
    public var compartmentId: String?
    public var agentId: String?
    public var toolConfig: JSONValue
    public var timeUpdated: Date?
    public var displayName: String?
    public var description: String?
    public var metadata: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, lifecycleState, timeCreated, compartmentId, agentId, toolConfig, timeUpdated, displayName, description, metadata, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                lifecycleState: ToolLifecycleStateEnum,
                timeCreated: Date? = nil,
                compartmentId: String? = nil,
                agentId: String? = nil,
                toolConfig: JSONValue,
                timeUpdated: Date? = nil,
                displayName: String? = nil,
                description: String? = nil,
                metadata: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.compartmentId = compartmentId
        self.agentId = agentId
        self.toolConfig = toolConfig
        self.timeUpdated = timeUpdated
        self.displayName = displayName
        self.description = description
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
