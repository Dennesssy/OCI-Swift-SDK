import Foundation
import OCICommon

// MARK: - deploystagesummary

public struct deploystagesummary: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeployStageLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var deployStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, displayName, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, deployStagePredecessorCollection, freeformTags, definedTags, systemTags, id, projectId, deployPipelineId, compartmentId, deployStageType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeployStageLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                deployStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.deployStageType = deployStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
