import Foundation
import OCICommon

// MARK: - DataSource

public struct DataSource: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var knowledgeBaseId: String?
    public var dataSourceConfig: JSONValue
    public var timeCreated: Date?
    public var lifecycleState: DataSourceLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var metadata: [String: String]?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, knowledgeBaseId, dataSourceConfig, timeCreated, lifecycleState, freeformTags, definedTags, description, metadata, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                knowledgeBaseId: String? = nil,
                dataSourceConfig: JSONValue,
                timeCreated: Date? = nil,
                lifecycleState: DataSourceLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                metadata: [String: String]? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.knowledgeBaseId = knowledgeBaseId
        self.dataSourceConfig = dataSourceConfig
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.metadata = metadata
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
