import Foundation
import OCICommon

// MARK: - CreateSingleDeployStageRedeploymentDetails

public struct CreateSingleDeployStageRedeploymentDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStageId: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var previousDeploymentId: String?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStageId, displayName, freeformTags, definedTags, previousDeploymentId
    }

    public init(
                deployPipelineId: String? = nil,
                deployStageId: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                previousDeploymentId: String? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStageId = deployStageId
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.previousDeploymentId = previousDeploymentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSingleDeployStageRedeploymentDetails: CustomStringConvertible {
    public var description: String { "CreateSingleDeployStageRedeploymentDetails()" }
}