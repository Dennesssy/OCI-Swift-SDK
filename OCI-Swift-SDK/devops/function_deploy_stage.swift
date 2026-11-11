import Foundation
import OCICommon

// MARK: - FunctionDeployStage

public struct FunctionDeployStage: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var functionDeployEnvironmentId: String?
    public var dockerImageDeployArtifactId: String?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var config: [String: String]?
    public var maxMemoryInMBs: Int64?
    public var functionTimeoutInSeconds: Int?
    public var lifecycleState: DeployStageLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, functionDeployEnvironmentId, dockerImageDeployArtifactId, description, displayName, timeCreated, timeUpdated, lifecycleDetails, deployStagePredecessorCollection, freeformTags, definedTags, systemTags, config, maxMemoryInMBs, functionTimeoutInSeconds, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                functionDeployEnvironmentId: String? = nil,
                dockerImageDeployArtifactId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                config: [String: String]? = nil,
                maxMemoryInMBs: Int64? = nil,
                functionTimeoutInSeconds: Int? = nil,
                lifecycleState: DeployStageLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.functionDeployEnvironmentId = functionDeployEnvironmentId
        self.dockerImageDeployArtifactId = dockerImageDeployArtifactId
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.config = config
        self.maxMemoryInMBs = maxMemoryInMBs
        self.functionTimeoutInSeconds = functionTimeoutInSeconds
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
