import Foundation
import OCICommon

// MARK: - UpdateDeliverArtifactStageDetails

public struct UpdateDeliverArtifactStageDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deliverArtifactCollection: DeliverArtifactCollection?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, deliverArtifactCollection
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deliverArtifactCollection: DeliverArtifactCollection? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deliverArtifactCollection = deliverArtifactCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
