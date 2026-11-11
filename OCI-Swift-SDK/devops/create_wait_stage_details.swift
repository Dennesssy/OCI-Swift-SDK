import Foundation
import OCICommon

// MARK: - CreateWaitStageDetails

public struct CreateWaitStageDetails: Codable, Sendable {

    public var buildPipelineId: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var waitCriteria: JSONValue
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, buildPipelineStagePredecessorCollection, waitCriteria, displayName, description, freeformTags, definedTags
    }

    public init(
                buildPipelineId: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                waitCriteria: JSONValue,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.waitCriteria = waitCriteria
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
