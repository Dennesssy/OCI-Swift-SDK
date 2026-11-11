import Foundation
import OCICommon

// MARK: - SingleDeployStageRedeployment

public struct SingleDeployStageRedeployment: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var deployStageId: String?
    public var deployPipelineArtifacts: DeployPipelineArtifactCollection?
    public var deployPipelineEnvironments: DeployPipelineEnvironmentCollection?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var deploymentArguments: DeploymentArgumentCollection?
    public var deployStageOverrideArguments: DeployStageOverrideArgumentCollection?
    public var deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection?
    public var deploymentExecutionProgress: DeploymentExecutionProgress?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var cmUrl: String?
    public var previousDeploymentId: String?
    public var lifecycleState: DeploymentLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, deployStageId, deployPipelineArtifacts, deployPipelineEnvironments, displayName, timeCreated, timeUpdated, lifecycleDetails, deploymentArguments, deployStageOverrideArguments, deployArtifactOverrideArguments, deploymentExecutionProgress, freeformTags, definedTags, systemTags, cmUrl, previousDeploymentId, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                deployStageId: String? = nil,
                deployPipelineArtifacts: DeployPipelineArtifactCollection? = nil,
                deployPipelineEnvironments: DeployPipelineEnvironmentCollection? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                deploymentArguments: DeploymentArgumentCollection? = nil,
                deployStageOverrideArguments: DeployStageOverrideArgumentCollection? = nil,
                deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection? = nil,
                deploymentExecutionProgress: DeploymentExecutionProgress? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                cmUrl: String? = nil,
                previousDeploymentId: String? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.deployStageId = deployStageId
        self.deployPipelineArtifacts = deployPipelineArtifacts
        self.deployPipelineEnvironments = deployPipelineEnvironments
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.deploymentArguments = deploymentArguments
        self.deployStageOverrideArguments = deployStageOverrideArguments
        self.deployArtifactOverrideArguments = deployArtifactOverrideArguments
        self.deploymentExecutionProgress = deploymentExecutionProgress
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.cmUrl = cmUrl
        self.previousDeploymentId = previousDeploymentId
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SingleDeployStageRedeployment: CustomStringConvertible {
    public var description: String { "SingleDeployStageRedeployment()" }
}