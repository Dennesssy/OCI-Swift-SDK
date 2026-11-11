import Foundation
import OCICommon

// MARK: - CreateLoadBalancerTrafficShiftDeployStageDetails

public struct CreateLoadBalancerTrafficShiftDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var blueBackendIps: BackendSetIpCollection?
    public var greenBackendIps: BackendSetIpCollection?
    public var rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy?
    public var loadBalancerConfig: LoadBalancerConfig?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var rollbackPolicy: JSONValue?
    public var trafficShiftTarget: LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, blueBackendIps, greenBackendIps, rolloutPolicy, loadBalancerConfig, description, displayName, freeformTags, definedTags, rollbackPolicy, trafficShiftTarget
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                blueBackendIps: BackendSetIpCollection? = nil,
                greenBackendIps: BackendSetIpCollection? = nil,
                rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy? = nil,
                loadBalancerConfig: LoadBalancerConfig? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                rollbackPolicy: JSONValue? = nil,
                trafficShiftTarget: LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.blueBackendIps = blueBackendIps
        self.greenBackendIps = greenBackendIps
        self.rolloutPolicy = rolloutPolicy
        self.loadBalancerConfig = loadBalancerConfig
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.rollbackPolicy = rollbackPolicy
        self.trafficShiftTarget = trafficShiftTarget
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
