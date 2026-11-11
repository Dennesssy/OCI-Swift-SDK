import Foundation
import OCICommon

// MARK: - DeployArtifact

public struct DeployArtifact: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var deployArtifactType: DeployArtifactDeployArtifactTypeEnum
    public var argumentSubstitutionMode: DeployArtifactArgumentSubstitutionModeEnum
    public var deployArtifactSource: JSONValue
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeployArtifactLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, deployArtifactType, argumentSubstitutionMode, deployArtifactSource, description, displayName, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                deployArtifactType: DeployArtifactDeployArtifactTypeEnum,
                argumentSubstitutionMode: DeployArtifactArgumentSubstitutionModeEnum,
                deployArtifactSource: JSONValue,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeployArtifactLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.deployArtifactType = deployArtifactType
        self.argumentSubstitutionMode = argumentSubstitutionMode
        self.deployArtifactSource = deployArtifactSource
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
