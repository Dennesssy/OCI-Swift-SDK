import Foundation
import OCICommon

// MARK: - CreateShellDeployStageDetails

public struct CreateShellDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var containerConfig: JSONValue
    public var commandSpecDeployArtifactId: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var timeoutInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, containerConfig, commandSpecDeployArtifactId, description, displayName, freeformTags, definedTags, timeoutInSeconds
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                containerConfig: JSONValue,
                commandSpecDeployArtifactId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                timeoutInSeconds: Int? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.containerConfig = containerConfig
        self.commandSpecDeployArtifactId = commandSpecDeployArtifactId
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeoutInSeconds = timeoutInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
