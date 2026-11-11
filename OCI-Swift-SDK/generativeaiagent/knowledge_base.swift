import Foundation
import OCICommon

// MARK: - KnowledgeBase

public struct KnowledgeBase: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var indexConfig: JSONValue
    public var timeCreated: Date?
    public var lifecycleState: KnowledgeBaseLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var knowledgeBaseStatistics: KnowledgeBaseStatistics?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, indexConfig, timeCreated, lifecycleState, freeformTags, definedTags, description, knowledgeBaseStatistics, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                indexConfig: JSONValue,
                timeCreated: Date? = nil,
                lifecycleState: KnowledgeBaseLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                knowledgeBaseStatistics: KnowledgeBaseStatistics? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.indexConfig = indexConfig
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.knowledgeBaseStatistics = knowledgeBaseStatistics
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
