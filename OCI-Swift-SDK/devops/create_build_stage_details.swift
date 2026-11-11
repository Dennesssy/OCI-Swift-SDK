import Foundation
import OCICommon

// MARK: - CreateBuildStageDetails

public struct CreateBuildStageDetails: Codable, Sendable {

    public var buildPipelineId: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var buildSourceCollection: BuildSourceCollection?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var buildSpecFile: String?
    public var stageExecutionTimeoutInSeconds: Int?
    public var primaryBuildSource: String?
    public var buildRunnerShapeConfig: JSONValue?
    public var privateAccessConfig: JSONValue?
    public var image: BuildStageImageEnum

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, buildPipelineStagePredecessorCollection, buildSourceCollection, displayName, description, freeformTags, definedTags, buildSpecFile, stageExecutionTimeoutInSeconds, primaryBuildSource, buildRunnerShapeConfig, privateAccessConfig, image
    }

    public init(
                buildPipelineId: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                buildSourceCollection: BuildSourceCollection? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                buildSpecFile: String? = nil,
                stageExecutionTimeoutInSeconds: Int? = nil,
                primaryBuildSource: String? = nil,
                buildRunnerShapeConfig: JSONValue? = nil,
                privateAccessConfig: JSONValue? = nil,
                image: BuildStageImageEnum
    ) {
        self.buildPipelineId = buildPipelineId
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.buildSourceCollection = buildSourceCollection
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.buildSpecFile = buildSpecFile
        self.stageExecutionTimeoutInSeconds = stageExecutionTimeoutInSeconds
        self.primaryBuildSource = primaryBuildSource
        self.buildRunnerShapeConfig = buildRunnerShapeConfig
        self.privateAccessConfig = privateAccessConfig
        self.image = image
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
