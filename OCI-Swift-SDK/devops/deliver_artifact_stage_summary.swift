import Foundation
import OCICommon

// MARK: - DeliverArtifactStageSummary

public struct DeliverArtifactStageSummary: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var buildPipelineId: String?
    public var compartmentId: String?
    public var deliverArtifactCollection: DeliverArtifactCollection?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var lifecycleState: BuildPipelineStageLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, buildPipelineId, compartmentId, deliverArtifactCollection, displayName, timeCreated, timeUpdated, lifecycleDetails, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, systemTags, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                buildPipelineId: String? = nil,
                compartmentId: String? = nil,
                deliverArtifactCollection: DeliverArtifactCollection? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                lifecycleState: BuildPipelineStageLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.buildPipelineId = buildPipelineId
        self.compartmentId = compartmentId
        self.deliverArtifactCollection = deliverArtifactCollection
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
