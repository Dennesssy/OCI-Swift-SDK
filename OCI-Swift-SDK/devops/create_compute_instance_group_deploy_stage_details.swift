import Foundation
import OCICommon

// MARK: - CreateComputeInstanceGroupDeployStageDetails

public struct CreateComputeInstanceGroupDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var computeInstanceGroupDeployEnvironmentId: String?
    public var deploymentSpecDeployArtifactId: String?
    public var rolloutPolicy: JSONValue
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deployArtifactIds: [String]?
    public var rollbackPolicy: JSONValue?
    public var failurePolicy: JSONValue?
    public var loadBalancerConfig: LoadBalancerConfig?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, computeInstanceGroupDeployEnvironmentId, deploymentSpecDeployArtifactId, rolloutPolicy, description, displayName, freeformTags, definedTags, deployArtifactIds, rollbackPolicy, failurePolicy, loadBalancerConfig
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                computeInstanceGroupDeployEnvironmentId: String? = nil,
                deploymentSpecDeployArtifactId: String? = nil,
                rolloutPolicy: JSONValue,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deployArtifactIds: [String]? = nil,
                rollbackPolicy: JSONValue? = nil,
                failurePolicy: JSONValue? = nil,
                loadBalancerConfig: LoadBalancerConfig? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.computeInstanceGroupDeployEnvironmentId = computeInstanceGroupDeployEnvironmentId
        self.deploymentSpecDeployArtifactId = deploymentSpecDeployArtifactId
        self.rolloutPolicy = rolloutPolicy
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deployArtifactIds = deployArtifactIds
        self.rollbackPolicy = rollbackPolicy
        self.failurePolicy = failurePolicy
        self.loadBalancerConfig = loadBalancerConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
