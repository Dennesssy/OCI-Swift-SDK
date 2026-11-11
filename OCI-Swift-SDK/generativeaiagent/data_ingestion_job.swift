import Foundation
import OCICommon

// MARK: - DataIngestionJob

public struct DataIngestionJob: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var dataSourceId: String?
    public var dataIngestionJobType: DataIngestionJobType?
    public var dataIngestionJobStatistics: DataIngestionJobStatistics?
    public var timeCreated: Date?
    public var lifecycleState: DataIngestionJobLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var knowledgeBaseId: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, dataSourceId, dataIngestionJobType, dataIngestionJobStatistics, timeCreated, lifecycleState, freeformTags, definedTags, description, knowledgeBaseId, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                dataSourceId: String? = nil,
                dataIngestionJobType: DataIngestionJobType? = nil,
                dataIngestionJobStatistics: DataIngestionJobStatistics? = nil,
                timeCreated: Date? = nil,
                lifecycleState: DataIngestionJobLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                knowledgeBaseId: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.dataSourceId = dataSourceId
        self.dataIngestionJobType = dataIngestionJobType
        self.dataIngestionJobStatistics = dataIngestionJobStatistics
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.knowledgeBaseId = knowledgeBaseId
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
