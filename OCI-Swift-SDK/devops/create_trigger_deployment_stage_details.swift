import Foundation
import OCICommon

// MARK: - CreateTriggerDeploymentStageDetails

public struct CreateTriggerDeploymentStageDetails: Codable, Sendable {

    public var buildPipelineId: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var deployPipelineId: String?
    public var isPassAllParametersEnabled: Bool?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, buildPipelineStagePredecessorCollection, deployPipelineId, isPassAllParametersEnabled, displayName, description, freeformTags, definedTags
    }

    public init(
                buildPipelineId: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                deployPipelineId: String? = nil,
                isPassAllParametersEnabled: Bool? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.deployPipelineId = deployPipelineId
        self.isPassAllParametersEnabled = isPassAllParametersEnabled
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
