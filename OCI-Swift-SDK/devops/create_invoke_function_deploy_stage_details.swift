import Foundation
import OCICommon

// MARK: - CreateInvokeFunctionDeployStageDetails

public struct CreateInvokeFunctionDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var functionDeployEnvironmentId: String?
    public var isAsync: Bool?
    public var isValidationEnabled: Bool?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deployArtifactId: String?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, functionDeployEnvironmentId, isAsync, isValidationEnabled, description, displayName, freeformTags, definedTags, deployArtifactId
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                functionDeployEnvironmentId: String? = nil,
                isAsync: Bool? = nil,
                isValidationEnabled: Bool? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deployArtifactId: String? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.functionDeployEnvironmentId = functionDeployEnvironmentId
        self.isAsync = isAsync
        self.isValidationEnabled = isValidationEnabled
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deployArtifactId = deployArtifactId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
