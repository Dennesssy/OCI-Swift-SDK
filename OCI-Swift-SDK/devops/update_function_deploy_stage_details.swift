import Foundation
import OCICommon

// MARK: - UpdateFunctionDeployStageDetails

public struct UpdateFunctionDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var functionDeployEnvironmentId: String?
    public var dockerImageDeployArtifactId: String?
    public var config: [String: String]?
    public var maxMemoryInMBs: Int64?
    public var functionTimeoutInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, functionDeployEnvironmentId, dockerImageDeployArtifactId, config, maxMemoryInMBs, functionTimeoutInSeconds
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                functionDeployEnvironmentId: String? = nil,
                dockerImageDeployArtifactId: String? = nil,
                config: [String: String]? = nil,
                maxMemoryInMBs: Int64? = nil,
                functionTimeoutInSeconds: Int? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.functionDeployEnvironmentId = functionDeployEnvironmentId
        self.dockerImageDeployArtifactId = dockerImageDeployArtifactId
        self.config = config
        self.maxMemoryInMBs = maxMemoryInMBs
        self.functionTimeoutInSeconds = functionTimeoutInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
