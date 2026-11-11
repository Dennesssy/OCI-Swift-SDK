import Foundation
import OCICommon

// MARK: - BuildStageSummary

public struct BuildStageSummary: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var buildPipelineId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var buildSpecFile: String?
    public var stageExecutionTimeoutInSeconds: Int?
    public var buildSourceCollection: BuildSourceCollection?
    public var primaryBuildSource: String?
    public var buildRunnerShapeConfig: JSONValue?
    public var privateAccessConfig: JSONValue?
    public var lifecycleState: BuildPipelineStageLifecycleStateEnum?
    public var image: BuildStageImageEnum

    private enum CodingKeys: String, CodingKey {
        case id, projectId, buildPipelineId, compartmentId, displayName, timeCreated, timeUpdated, lifecycleDetails, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, systemTags, buildSpecFile, stageExecutionTimeoutInSeconds, buildSourceCollection, primaryBuildSource, buildRunnerShapeConfig, privateAccessConfig, lifecycleState, image
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                buildPipelineId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                buildSpecFile: String? = nil,
                stageExecutionTimeoutInSeconds: Int? = nil,
                buildSourceCollection: BuildSourceCollection? = nil,
                primaryBuildSource: String? = nil,
                buildRunnerShapeConfig: JSONValue? = nil,
                privateAccessConfig: JSONValue? = nil,
                lifecycleState: BuildPipelineStageLifecycleStateEnum? = nil,
                image: BuildStageImageEnum
    ) {
        self.id = id
        self.projectId = projectId
        self.buildPipelineId = buildPipelineId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.buildSpecFile = buildSpecFile
        self.stageExecutionTimeoutInSeconds = stageExecutionTimeoutInSeconds
        self.buildSourceCollection = buildSourceCollection
        self.primaryBuildSource = primaryBuildSource
        self.buildRunnerShapeConfig = buildRunnerShapeConfig
        self.privateAccessConfig = privateAccessConfig
        self.lifecycleState = lifecycleState
        self.image = image
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
