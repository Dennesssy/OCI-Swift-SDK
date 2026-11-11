import Foundation
import OCICommon

// MARK: - buildpipelinestage

public struct buildpipelinestage: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: BuildPipelineStageLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var id: String?
    public var projectId: String?
    public var buildPipelineId: String?
    public var compartmentId: String?
    public var buildPipelineStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, buildPipelineStagePredecessorCollection, freeformTags, definedTags, systemTags, id, projectId, buildPipelineId, compartmentId, buildPipelineStageType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: BuildPipelineStageLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                projectId: String? = nil,
                buildPipelineId: String? = nil,
                compartmentId: String? = nil,
                buildPipelineStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.id = id
        self.projectId = projectId
        self.buildPipelineId = buildPipelineId
        self.compartmentId = compartmentId
        self.buildPipelineStageType = buildPipelineStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
