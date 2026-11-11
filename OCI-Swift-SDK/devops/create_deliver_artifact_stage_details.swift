import Foundation
import OCICommon

// MARK: - CreateDeliverArtifactStageDetails

public struct CreateDeliverArtifactStageDetails: Codable, Sendable {

    public var buildPipelineId: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var deliverArtifactCollection: DeliverArtifactCollection?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, buildPipelineStagePredecessorCollection, deliverArtifactCollection, displayName, description, freeformTags, definedTags
    }

    public init(
                buildPipelineId: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                deliverArtifactCollection: DeliverArtifactCollection? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.deliverArtifactCollection = deliverArtifactCollection
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
