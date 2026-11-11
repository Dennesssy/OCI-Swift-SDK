import Foundation
import OCICommon

// MARK: - LoadBalancerTrafficShiftDeployStageSummary

public struct LoadBalancerTrafficShiftDeployStageSummary: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var blueBackendIps: BackendSetIpCollection?
    public var greenBackendIps: BackendSetIpCollection?
    public var rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy?
    public var loadBalancerConfig: LoadBalancerConfig?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var rollbackPolicy: JSONValue?
    public var lifecycleState: DeployStageLifecycleStateEnum?
    public var trafficShiftTarget: LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, blueBackendIps, greenBackendIps, rolloutPolicy, loadBalancerConfig, description, displayName, timeCreated, timeUpdated, lifecycleDetails, deployStagePredecessorCollection, freeformTags, definedTags, systemTags, rollbackPolicy, lifecycleState, trafficShiftTarget
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                blueBackendIps: BackendSetIpCollection? = nil,
                greenBackendIps: BackendSetIpCollection? = nil,
                rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy? = nil,
                loadBalancerConfig: LoadBalancerConfig? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                rollbackPolicy: JSONValue? = nil,
                lifecycleState: DeployStageLifecycleStateEnum? = nil,
                trafficShiftTarget: LoadBalancerTrafficShiftDeployStageTrafficShiftTargetEnum
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.blueBackendIps = blueBackendIps
        self.greenBackendIps = greenBackendIps
        self.rolloutPolicy = rolloutPolicy
        self.loadBalancerConfig = loadBalancerConfig
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.rollbackPolicy = rollbackPolicy
        self.lifecycleState = lifecycleState
        self.trafficShiftTarget = trafficShiftTarget
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
