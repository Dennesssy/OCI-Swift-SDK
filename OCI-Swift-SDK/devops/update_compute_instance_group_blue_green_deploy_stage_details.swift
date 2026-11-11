import Foundation
import OCICommon

// MARK: - UpdateComputeInstanceGroupBlueGreenDeployStageDetails

public struct UpdateComputeInstanceGroupBlueGreenDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deploymentSpecDeployArtifactId: String?
    public var deployArtifactIds: [String]?
    public var rolloutPolicy: JSONValue?
    public var failurePolicy: JSONValue?
    public var testLoadBalancerConfig: LoadBalancerConfig?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, deploymentSpecDeployArtifactId, deployArtifactIds, rolloutPolicy, failurePolicy, testLoadBalancerConfig
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deploymentSpecDeployArtifactId: String? = nil,
                deployArtifactIds: [String]? = nil,
                rolloutPolicy: JSONValue? = nil,
                failurePolicy: JSONValue? = nil,
                testLoadBalancerConfig: LoadBalancerConfig? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deploymentSpecDeployArtifactId = deploymentSpecDeployArtifactId
        self.deployArtifactIds = deployArtifactIds
        self.rolloutPolicy = rolloutPolicy
        self.failurePolicy = failurePolicy
        self.testLoadBalancerConfig = testLoadBalancerConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
