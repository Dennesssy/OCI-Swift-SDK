import Foundation
import OCICommon

// MARK: - BuildStage

public struct BuildStage: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var buildPipelineId: String?
    public var compartmentId: String?
    public var buildSourceCollection: BuildSourceCollection?
    public var displayName: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var buildSpecFile: String?
    public var stageExecutionTimeoutInSeconds: Int?
    public var primaryBuildSource: String?
    public var buildRunnerShapeConfig: JSONValue?
    public var privateAccessConfig: JSONValue?
    public var image: BuildStageImageEnum
    public var lifecycleState: BuildPipelineStageLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, buildPipelineId, compartmentId, buildSourceCollection, displayName, description, timeCreated, timeUpdated, lifecycleDetails, buildPipelineStagePredecessorCollection, freeformTags, definedTags, systemTags, buildSpecFile, stageExecutionTimeoutInSeconds, primaryBuildSource, buildRunnerShapeConfig, privateAccessConfig, image, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                buildPipelineId: String? = nil,
                compartmentId: String? = nil,
                buildSourceCollection: BuildSourceCollection? = nil,
                displayName: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                buildSpecFile: String? = nil,
                stageExecutionTimeoutInSeconds: Int? = nil,
                primaryBuildSource: String? = nil,
                buildRunnerShapeConfig: JSONValue? = nil,
                privateAccessConfig: JSONValue? = nil,
                image: BuildStageImageEnum,
                lifecycleState: BuildPipelineStageLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.buildPipelineId = buildPipelineId
        self.compartmentId = compartmentId
        self.buildSourceCollection = buildSourceCollection
        self.displayName = displayName
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.buildSpecFile = buildSpecFile
        self.stageExecutionTimeoutInSeconds = stageExecutionTimeoutInSeconds
        self.primaryBuildSource = primaryBuildSource
        self.buildRunnerShapeConfig = buildRunnerShapeConfig
        self.privateAccessConfig = privateAccessConfig
        self.image = image
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
