import Foundation
import OCICommon

// MARK: - ComputeInstanceGroupCanaryDeployStage

public struct ComputeInstanceGroupCanaryDeployStage: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var computeInstanceGroupDeployEnvironmentId: String?
    public var deploymentSpecDeployArtifactId: String?
    public var rolloutPolicy: JSONValue
    public var productionLoadBalancerConfig: LoadBalancerConfig?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var deployArtifactIds: [String]?
    public var testLoadBalancerConfig: LoadBalancerConfig?
    public var lifecycleState: DeployStageLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, computeInstanceGroupDeployEnvironmentId, deploymentSpecDeployArtifactId, rolloutPolicy, productionLoadBalancerConfig, description, displayName, timeCreated, timeUpdated, lifecycleDetails, deployStagePredecessorCollection, freeformTags, definedTags, systemTags, deployArtifactIds, testLoadBalancerConfig, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                computeInstanceGroupDeployEnvironmentId: String? = nil,
                deploymentSpecDeployArtifactId: String? = nil,
                rolloutPolicy: JSONValue,
                productionLoadBalancerConfig: LoadBalancerConfig? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                deployArtifactIds: [String]? = nil,
                testLoadBalancerConfig: LoadBalancerConfig? = nil,
                lifecycleState: DeployStageLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.computeInstanceGroupDeployEnvironmentId = computeInstanceGroupDeployEnvironmentId
        self.deploymentSpecDeployArtifactId = deploymentSpecDeployArtifactId
        self.rolloutPolicy = rolloutPolicy
        self.productionLoadBalancerConfig = productionLoadBalancerConfig
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.deployArtifactIds = deployArtifactIds
        self.testLoadBalancerConfig = testLoadBalancerConfig
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
