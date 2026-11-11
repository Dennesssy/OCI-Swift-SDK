import Foundation
import OCICommon

// MARK: - DeployPipelineSummary

public struct DeployPipelineSummary: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var lifecycleState: DeployPipelineLifecycleStateEnum?
    public var deployPipelineParameters: DeployPipelineParameterCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, description, displayName, timeCreated, timeUpdated, lifecycleDetails, lifecycleState, deployPipelineParameters, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                lifecycleState: DeployPipelineLifecycleStateEnum? = nil,
                deployPipelineParameters: DeployPipelineParameterCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleState = lifecycleState
        self.deployPipelineParameters = deployPipelineParameters
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
