import Foundation
import OCICommon

// MARK: - Tool

public struct Tool: Codable, Sendable {

    public var id: String?
    public var lifecycleState: ToolLifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var compartmentId: String?
    public var agentId: String?
    public var toolConfig: JSONValue
    public var timeUpdated: Date?
    public var displayName: String?
    public var metadata: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, lifecycleState, timeCreated, description, compartmentId, agentId, toolConfig, timeUpdated, displayName, metadata, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                lifecycleState: ToolLifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                compartmentId: String? = nil,
                agentId: String? = nil,
                toolConfig: JSONValue,
                timeUpdated: Date? = nil,
                displayName: String? = nil,
                metadata: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.description = description
        self.compartmentId = compartmentId
        self.agentId = agentId
        self.toolConfig = toolConfig
        self.timeUpdated = timeUpdated
        self.displayName = displayName
        self.metadata = metadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
