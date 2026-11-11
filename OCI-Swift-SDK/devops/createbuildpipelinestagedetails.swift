import Foundation
import OCICommon

// MARK: - createbuildpipelinestagedetails

public struct createbuildpipelinestagedetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var buildPipelineId: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var buildPipelineStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, freeformTags, definedTags, buildPipelineId, buildPipelineStagePredecessorCollection, buildPipelineStageType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                buildPipelineId: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                buildPipelineStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.buildPipelineId = buildPipelineId
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.buildPipelineStageType = buildPipelineStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
