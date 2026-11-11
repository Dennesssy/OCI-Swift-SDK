import Foundation
import OCICommon

// MARK: - createdeploystagedetails

public struct createdeploystagedetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var deployStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, displayName, freeformTags, definedTags, deployPipelineId, deployStagePredecessorCollection, deployStageType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                deployStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.deployStageType = deployStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
