import Foundation
import OCICommon

// MARK: - DeployPipeline

public struct DeployPipeline: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var deployPipelineParameters: DeployPipelineParameterCollection?
    public var description: String?
    public var displayName: String?
    public var deployPipelineArtifacts: DeployPipelineArtifactCollection?
    public var deployPipelineEnvironments: DeployPipelineEnvironmentCollection?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeployPipelineLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, deployPipelineParameters, description, displayName, deployPipelineArtifacts, deployPipelineEnvironments, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                deployPipelineParameters: DeployPipelineParameterCollection? = nil,
                description: String? = nil,
                displayName: String? = nil,
                deployPipelineArtifacts: DeployPipelineArtifactCollection? = nil,
                deployPipelineEnvironments: DeployPipelineEnvironmentCollection? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeployPipelineLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.deployPipelineParameters = deployPipelineParameters
        self.description = description
        self.displayName = displayName
        self.deployPipelineArtifacts = deployPipelineArtifacts
        self.deployPipelineEnvironments = deployPipelineEnvironments
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
