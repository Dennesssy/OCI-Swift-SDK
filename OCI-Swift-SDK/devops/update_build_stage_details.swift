import Foundation
import OCICommon

// MARK: - UpdateBuildStageDetails

public struct UpdateBuildStageDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var buildSpecFile: String?
    public var stageExecutionTimeoutInSeconds: Int?
    public var buildSourceCollection: BuildSourceCollection?
    public var primaryBuildSource: String?
    public var buildRunnerShapeConfig: JSONValue?
    public var privateAccessConfig: JSONValue?
    public var image: BuildStageImageEnum?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, buildPipelineStagePredecessorCollection, freeformTags, definedTags, buildSpecFile, stageExecutionTimeoutInSeconds, buildSourceCollection, primaryBuildSource, buildRunnerShapeConfig, privateAccessConfig, image
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                buildPipelineStagePredecessorCollection: BuildPipelineStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                buildSpecFile: String? = nil,
                stageExecutionTimeoutInSeconds: Int? = nil,
                buildSourceCollection: BuildSourceCollection? = nil,
                primaryBuildSource: String? = nil,
                buildRunnerShapeConfig: JSONValue? = nil,
                privateAccessConfig: JSONValue? = nil,
                image: BuildStageImageEnum? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.buildPipelineStagePredecessorCollection = buildPipelineStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.buildSpecFile = buildSpecFile
        self.stageExecutionTimeoutInSeconds = stageExecutionTimeoutInSeconds
        self.buildSourceCollection = buildSourceCollection
        self.primaryBuildSource = primaryBuildSource
        self.buildRunnerShapeConfig = buildRunnerShapeConfig
        self.privateAccessConfig = privateAccessConfig
        self.image = image
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
