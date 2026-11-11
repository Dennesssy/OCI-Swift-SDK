import Foundation
import OCICommon

// MARK: - CreateManualApprovalDeployStageDetails

public struct CreateManualApprovalDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var approvalPolicy: JSONValue
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, approvalPolicy, description, displayName, freeformTags, definedTags
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                approvalPolicy: JSONValue,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.approvalPolicy = approvalPolicy
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
