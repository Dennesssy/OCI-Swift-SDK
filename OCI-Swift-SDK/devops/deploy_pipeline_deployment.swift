import Foundation
import OCICommon

// MARK: - DeployPipelineDeployment

public struct DeployPipelineDeployment: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
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
    public var lifecycleState: DeploymentLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, deployPipelineArtifacts, deployPipelineEnvironments, displayName, timeCreated, timeUpdated, lifecycleDetails, deploymentArguments, deployStageOverrideArguments, deployArtifactOverrideArguments, deploymentExecutionProgress, freeformTags, definedTags, systemTags, cmUrl, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
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
                lifecycleState: DeploymentLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
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
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineDeployment: CustomStringConvertible {
    public var description: String { "DeployPipelineDeployment()" }
}