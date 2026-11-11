import Foundation
import OCICommon

// MARK: - updatebuildpipelinestagedetails

public struct updatebuildpipelinestagedetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var buildPipelineStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, buildPipelineStageType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                buildPipelineStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.buildPipelineStageType = buildPipelineStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
