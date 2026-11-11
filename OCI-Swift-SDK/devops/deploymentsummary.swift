import Foundation
import OCICommon

// MARK: - deploymentsummary

public struct deploymentsummary: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeploymentLifecycleStateEnum?
    public var deploymentArguments: DeploymentArgumentCollection?
    public var deployStageOverrideArguments: DeployStageOverrideArgumentCollection?
    public var deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var deploymentType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, timeCreated, timeUpdated, lifecycleState, deploymentArguments, deployStageOverrideArguments, deployArtifactOverrideArguments, lifecycleDetails, freeformTags, definedTags, systemTags, id, projectId, deployPipelineId, compartmentId, deploymentType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil,
                deploymentArguments: DeploymentArgumentCollection? = nil,
                deployStageOverrideArguments: DeployStageOverrideArgumentCollection? = nil,
                deployArtifactOverrideArguments: DeployArtifactOverrideArgumentCollection? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                deploymentType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.deploymentArguments = deploymentArguments
        self.deployStageOverrideArguments = deployStageOverrideArguments
        self.deployArtifactOverrideArguments = deployArtifactOverrideArguments
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.deploymentType = deploymentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension deploymentsummary: CustomStringConvertible {
    public var description: String { "deploymentsummary()" }
}