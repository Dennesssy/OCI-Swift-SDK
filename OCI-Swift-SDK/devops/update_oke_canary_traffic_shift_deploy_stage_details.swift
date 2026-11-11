import Foundation
import OCICommon

// MARK: - UpdateOkeCanaryTrafficShiftDeployStageDetails

public struct UpdateOkeCanaryTrafficShiftDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, rolloutPolicy
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                rolloutPolicy: LoadBalancerTrafficShiftRolloutPolicy? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.rolloutPolicy = rolloutPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
