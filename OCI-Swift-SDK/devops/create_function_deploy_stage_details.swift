import Foundation
import OCICommon

// MARK: - CreateFunctionDeployStageDetails

public struct CreateFunctionDeployStageDetails: Codable, Sendable {

    public var deployPipelineId: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var functionDeployEnvironmentId: String?
    public var dockerImageDeployArtifactId: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var config: [String: String]?
    public var maxMemoryInMBs: Int64?
    public var functionTimeoutInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, deployStagePredecessorCollection, functionDeployEnvironmentId, dockerImageDeployArtifactId, description, displayName, freeformTags, definedTags, config, maxMemoryInMBs, functionTimeoutInSeconds
    }

    public init(
                deployPipelineId: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                functionDeployEnvironmentId: String? = nil,
                dockerImageDeployArtifactId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                config: [String: String]? = nil,
                maxMemoryInMBs: Int64? = nil,
                functionTimeoutInSeconds: Int? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.functionDeployEnvironmentId = functionDeployEnvironmentId
        self.dockerImageDeployArtifactId = dockerImageDeployArtifactId
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.config = config
        self.maxMemoryInMBs = maxMemoryInMBs
        self.functionTimeoutInSeconds = functionTimeoutInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
