import Foundation
import OCICommon

// MARK: - BuildPipelineSummary

public struct BuildPipelineSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var lifecycleState: BuildPipelineLifecycleStateEnum?
    public var buildPipelineParameters: BuildPipelineParameterCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, projectId, description, displayName, timeCreated, timeUpdated, lifecycleDetails, lifecycleState, buildPipelineParameters, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                lifecycleState: BuildPipelineLifecycleStateEnum? = nil,
                buildPipelineParameters: BuildPipelineParameterCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleState = lifecycleState
        self.buildPipelineParameters = buildPipelineParameters
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
