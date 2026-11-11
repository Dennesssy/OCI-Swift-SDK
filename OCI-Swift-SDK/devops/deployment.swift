import Foundation
import OCICommon

// MARK: - deployment

public struct deployment: Codable, Sendable {

    public var jsonData: Data?
    public var deployPipelineArtifacts: DeployPipelineArtifactCollection?
    public var deployPipelineEnvironments: DeployPipelineEnvironmentCollection?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeploymentLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var deploymentArguments: DeploymentArgumentCollection?
    public var deployStageOverrideArguments: DeployStageOverrideArgumentCollection?
    public var deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection?
    public var deploymentExecutionProgress: DeploymentExecutionProgress?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var cmUrl: String?
    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var deploymentType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, deployPipelineArtifacts, deployPipelineEnvironments, displayName, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, deploymentArguments, deployStageOverrideArguments, deployArtifactOverrideArguments, deploymentExecutionProgress, freeformTags, definedTags, systemTags, cmUrl, id, projectId, deployPipelineId, compartmentId, deploymentType
    }

    public init(
                jsonData: Data? = nil,
                deployPipelineArtifacts: DeployPipelineArtifactCollection? = nil,
                deployPipelineEnvironments: DeployPipelineEnvironmentCollection? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                deploymentArguments: DeploymentArgumentCollection? = nil,
                deployStageOverrideArguments: DeployStageOverrideArgumentCollection? = nil,
                deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection? = nil,
                deploymentExecutionProgress: DeploymentExecutionProgress? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                cmUrl: String? = nil,
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                deploymentType: String? = nil
    ) {
        self.jsonData = jsonData
        self.deployPipelineArtifacts = deployPipelineArtifacts
        self.deployPipelineEnvironments = deployPipelineEnvironments
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.deploymentArguments = deploymentArguments
        self.deployStageOverrideArguments = deployStageOverrideArguments
        self.deployArtifactOverrideArguments = deployArtifactOverrideArguments
        self.deploymentExecutionProgress = deploymentExecutionProgress
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.cmUrl = cmUrl
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.deploymentType = deploymentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension deployment: CustomStringConvertible {
    public var description: String { "deployment()" }
}