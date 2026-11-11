import Foundation
import OCICommon

// MARK: - UpdateLoadBalancerTrafficShiftDeployStageDetails

public struct UpdateLoadBalancerTrafficShiftDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var blueBackendIps: BackendSetIpCollection?
    public var greenBackendIps: BackendSetIpCollection?
    public var rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy?
    public var loadBalancerConfig: LoadBalancerConfig?
    public var rollbackPolicy: JSONValue?
    public var trafficShiftTarget: LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, blueBackendIps, greenBackendIps, rolloutPolicy, loadBalancerConfig, rollbackPolicy, trafficShiftTarget
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                blueBackendIps: BackendSetIpCollection? = nil,
                greenBackendIps: BackendSetIpCollection? = nil,
                rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy? = nil,
                loadBalancerConfig: LoadBalancerConfig? = nil,
                rollbackPolicy: JSONValue? = nil,
                trafficShiftTarget: LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.blueBackendIps = blueBackendIps
        self.greenBackendIps = greenBackendIps
        self.rolloutPolicy = rolloutPolicy
        self.loadBalancerConfig = loadBalancerConfig
        self.rollbackPolicy = rollbackPolicy
        self.trafficShiftTarget = trafficShiftTarget
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
