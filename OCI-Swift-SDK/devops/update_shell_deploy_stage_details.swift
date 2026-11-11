import Foundation
import OCICommon

// MARK: - UpdateShellDeployStageDetails

public struct UpdateShellDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var containerConfig: JSONValue?
    public var commandSpecDeployArtifactId: String?
    public var timeoutInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, containerConfig, commandSpecDeployArtifactId, timeoutInSeconds
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                containerConfig: JSONValue? = nil,
                commandSpecDeployArtifactId: String? = nil,
                timeoutInSeconds: Int? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.containerConfig = containerConfig
        self.commandSpecDeployArtifactId = commandSpecDeployArtifactId
        self.timeoutInSeconds = timeoutInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
