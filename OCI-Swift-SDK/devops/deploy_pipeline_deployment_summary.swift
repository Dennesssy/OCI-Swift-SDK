import Foundation
import OCICommon

// MARK: - DeployPipelineDeploymentSummary

public struct DeployPipelineDeploymentSummary: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var deploymentArguments: DeploymentArgumentCollection?
    public var deployStageOverrideArguments: DeployStageOverrideArgumentCollection?
    public var deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var lifecycleState: DeploymentLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, displayName, timeCreated, timeUpdated, deploymentArguments, deployStageOverrideArguments, deployArtifactOverrideArguments, lifecycleDetails, freeformTags, definedTags, systemTags, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                deploymentArguments: DeploymentArgumentCollection? = nil,
                deployStageOverrideArguments: DeployStageOverrideArgumentCollection? = nil,
                deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.deploymentArguments = deploymentArguments
        self.deployStageOverrideArguments = deployStageOverrideArguments
        self.deployArtifactOverrideArguments = deployArtifactOverrideArguments
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineDeploymentSummary: CustomStringConvertible {
    public var description: String { "DeployPipelineDeploymentSummary()" }
}