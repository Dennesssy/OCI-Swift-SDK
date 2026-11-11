import Foundation
import OCICommon

// MARK: - UpdateInvokeFunctionDeployStageDetails

public struct UpdateInvokeFunctionDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var functionDeployEnvironmentId: String?
    public var deployArtifactId: String?
    public var isAsync: Bool?
    public var isValidationEnabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, functionDeployEnvironmentId, deployArtifactId, isAsync, isValidationEnabled
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                functionDeployEnvironmentId: String? = nil,
                deployArtifactId: String? = nil,
                isAsync: Bool? = nil,
                isValidationEnabled: Bool? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.functionDeployEnvironmentId = functionDeployEnvironmentId
        self.deployArtifactId = deployArtifactId
        self.isAsync = isAsync
        self.isValidationEnabled = isValidationEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
