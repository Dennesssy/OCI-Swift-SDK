import Foundation
import OCICommon

// MARK: - UpdateComputeInstanceGroupDeployStageDetails

public struct UpdateComputeInstanceGroupDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var computeInstanceGroupDeployEnvironmentId: String?
    public var deploymentSpecDeployArtifactId: String?
    public var deployArtifactIds: [String]?
    public var rolloutPolicy: JSONValue?
    public var rollbackPolicy: JSONValue?
    public var failurePolicy: JSONValue?
    public var loadBalancerConfig: LoadBalancerConfig?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, computeInstanceGroupDeployEnvironmentId, deploymentSpecDeployArtifactId, deployArtifactIds, rolloutPolicy, rollbackPolicy, failurePolicy, loadBalancerConfig
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                computeInstanceGroupDeployEnvironmentId: String? = nil,
                deploymentSpecDeployArtifactId: String? = nil,
                deployArtifactIds: [String]? = nil,
                rolloutPolicy: JSONValue? = nil,
                rollbackPolicy: JSONValue? = nil,
                failurePolicy: JSONValue? = nil,
                loadBalancerConfig: LoadBalancerConfig? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.computeInstanceGroupDeployEnvironmentId = computeInstanceGroupDeployEnvironmentId
        self.deploymentSpecDeployArtifactId = deploymentSpecDeployArtifactId
        self.deployArtifactIds = deployArtifactIds
        self.rolloutPolicy = rolloutPolicy
        self.rollbackPolicy = rollbackPolicy
        self.failurePolicy = failurePolicy
        self.loadBalancerConfig = loadBalancerConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
