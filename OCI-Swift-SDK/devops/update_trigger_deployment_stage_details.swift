import Foundation
import OCICommon

// MARK: - UpdateTriggerDeploymentStageDetails

public struct UpdateTriggerDeploymentStageDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deployPipelineId: String?
    public var isPassAllParametersEnabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, deployPipelineId, isPassAllParametersEnabled
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deployPipelineId: String? = nil,
                isPassAllParametersEnabled: Bool? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deployPipelineId = deployPipelineId
        self.isPassAllParametersEnabled = isPassAllParametersEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
