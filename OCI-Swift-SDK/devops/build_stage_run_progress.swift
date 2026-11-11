import Foundation
import OCICommon

// MARK: - BuildStageRunProgress

public struct BuildStageRunProgress: Codable, Sendable {

    public var buildSourceCollection: BuildSourceCollection?
    public var stageDisplayName: String?
    public var buildPipelineStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection?
    public var actualBuildRunnerShape: String?
    public var actualBuildRunnerShapeConfig: ActualBuildRunnerShapeConfig?
    public var buildSpecFile: String?
    public var stageExecutionTimeoutInSeconds: Int?
    public var primaryBuildSource: String?
    public var steps: [BuildStageRunStep]?
    public var exportedVariables: ExportedVariableCollection?
    public var privateAccessConfig: JSONValue?
    public var image: BuildStageRunProgressImageEnum
    public var status: BuildPipelineStageRunProgressStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case buildSourceCollection, stageDisplayName, buildPipelineStageId, timeStarted, timeFinished, buildPipelineStagePredecessors, actualBuildRunnerShape, actualBuildRunnerShapeConfig, buildSpecFile, stageExecutionTimeoutInSeconds, primaryBuildSource, steps, exportedVariables, privateAccessConfig, image, status
    }

    public init(
                buildSourceCollection: BuildSourceCollection? = nil,
                stageDisplayName: String? = nil,
                buildPipelineStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection? = nil,
                actualBuildRunnerShape: String? = nil,
                actualBuildRunnerShapeConfig: ActualBuildRunnerShapeConfig? = nil,
                buildSpecFile: String? = nil,
                stageExecutionTimeoutInSeconds: Int? = nil,
                primaryBuildSource: String? = nil,
                steps: [BuildStageRunStep]? = nil,
                exportedVariables: ExportedVariableCollection? = nil,
                privateAccessConfig: JSONValue? = nil,
                image: BuildStageRunProgressImageEnum,
                status: BuildPipelineStageRunProgressStatusEnum? = nil
    ) {
        self.buildSourceCollection = buildSourceCollection
        self.stageDisplayName = stageDisplayName
        self.buildPipelineStageId = buildPipelineStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.buildPipelineStagePredecessors = buildPipelineStagePredecessors
        self.actualBuildRunnerShape = actualBuildRunnerShape
        self.actualBuildRunnerShapeConfig = actualBuildRunnerShapeConfig
        self.buildSpecFile = buildSpecFile
        self.stageExecutionTimeoutInSeconds = stageExecutionTimeoutInSeconds
        self.primaryBuildSource = primaryBuildSource
        self.steps = steps
        self.exportedVariables = exportedVariables
        self.privateAccessConfig = privateAccessConfig
        self.image = image
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildStageRunProgress: CustomStringConvertible {
    public var description: String { "BuildStageRunProgress()" }
}