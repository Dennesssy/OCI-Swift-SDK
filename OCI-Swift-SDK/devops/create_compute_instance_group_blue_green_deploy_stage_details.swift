import Foundation
import OCICommon

// MARK: - CreateComputeInstanceGroupBlueGreenDeployStageDetails

public struct CreateComputeInstanceGroupBlueGreenDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var deployEnvironmentIdA: String?
    public var deployEnvironmentIdB: String?
    public var deploymentSpecDeployArtifactId: String?
    public var rolloutPolicy: JSONValue
    public var productionLoadBalancerConfig: LoadBalancerConfig?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deployArtifactIds: [String]?
    public var failurePolicy: JSONValue?
    public var testLoadBalancerConfig: LoadBalancerConfig?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, deployEnvironmentIdA, deployEnvironmentIdB, deploymentSpecDeployArtifactId, rolloutPolicy, productionLoadBalancerConfig, description, displayName, freeformTags, definedTags, deployArtifactIds, failurePolicy, testLoadBalancerConfig
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                deployEnvironmentIdA: String? = nil,
                deployEnvironmentIdB: String? = nil,
                deploymentSpecDeployArtifactId: String? = nil,
                rolloutPolicy: JSONValue,
                productionLoadBalancerConfig: LoadBalancerConfig? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deployArtifactIds: [String]? = nil,
                failurePolicy: JSONValue? = nil,
                testLoadBalancerConfig: LoadBalancerConfig? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.deployEnvironmentIdA = deployEnvironmentIdA
        self.deployEnvironmentIdB = deployEnvironmentIdB
        self.deploymentSpecDeployArtifactId = deploymentSpecDeployArtifactId
        self.rolloutPolicy = rolloutPolicy
        self.productionLoadBalancerConfig = productionLoadBalancerConfig
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deployArtifactIds = deployArtifactIds
        self.failurePolicy = failurePolicy
        self.testLoadBalancerConfig = testLoadBalancerConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
