import Foundation
import OCICommon

// MARK: - updatedeploystagedetails

public struct updatedeploystagedetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deployStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, deployStageType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deployStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deployStageType = deployStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
