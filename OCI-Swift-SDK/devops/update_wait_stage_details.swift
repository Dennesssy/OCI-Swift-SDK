import Foundation
import OCICommon

// MARK: - UpdateWaitStageDetails

public struct UpdateWaitStageDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var waitCriteria: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, waitCriteria
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                waitCriteria: JSONValue? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.waitCriteria = waitCriteria
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
