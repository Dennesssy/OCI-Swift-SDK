import Foundation
import OCICommon

// MARK: - DataIngestionJobSummary

public struct DataIngestionJobSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var dataSourceId: String?
    public var dataIngestionJobType: DataIngestionJobType?
    public var dataIngestionJobStatistics: DataIngestionJobStatistics?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: DataIngestionJobLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, dataSourceId, dataIngestionJobType, dataIngestionJobStatistics, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, description, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                dataSourceId: String? = nil,
                dataIngestionJobType: DataIngestionJobType? = nil,
                dataIngestionJobStatistics: DataIngestionJobStatistics? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: DataIngestionJobLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.dataSourceId = dataSourceId
        self.dataIngestionJobType = dataIngestionJobType
        self.dataIngestionJobStatistics = dataIngestionJobStatistics
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
