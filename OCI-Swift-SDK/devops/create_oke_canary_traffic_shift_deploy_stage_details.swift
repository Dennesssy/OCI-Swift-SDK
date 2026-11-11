import Foundation
import OCICommon

// MARK: - CreateOkeCanaryTrafficShiftDeployStageDetails

public struct CreateOkeCanaryTrafficShiftDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var okeCanaryDeployStageId: String?
    public var rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, okeCanaryDeployStageId, rolloutPolicy, description, displayName, freeformTags, definedTags
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                okeCanaryDeployStageId: String? = nil,
                rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.okeCanaryDeployStageId = okeCanaryDeployStageId
        self.rolloutPolicy = rolloutPolicy
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
