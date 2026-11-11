import Foundation

// MARK: - TriggerDeploymentPipelineStageRunProgress

public struct TriggerDeploymentPipelineStageRunProgress: Codable, Sendable {

    public var stageDisplayName: String?
    public var buildPipelineStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection?
    public var exportedVariables: ExportedVariableCollection?
    public var artifactOverrideParameters: DeployArtifactOverrideArgumentCollection?
    public var deploymentId: String?
    public var status: BuildPipelineStageRunProgressStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case stageDisplayName, buildPipelineStageId, timeStarted, timeFinished, buildPipelineStagePredecessors, exportedVariables, artifactOverrideParameters, deploymentId, status
    }

    public init(
                stageDisplayName: String? = nil,
                buildPipelineStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection? = nil,
                exportedVariables: ExportedVariableCollection? = nil,
                artifactOverrideParameters: DeployArtifactOverrideArgumentCollection? = nil,
                deploymentId: String? = nil,
                status: BuildPipelineStageRunProgressStatusEnum? = nil
    ) {
        self.stageDisplayName = stageDisplayName
        self.buildPipelineStageId = buildPipelineStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.buildPipelineStagePredecessors = buildPipelineStagePredecessors
        self.exportedVariables = exportedVariables
        self.artifactOverrideParameters = artifactOverrideParameters
        self.deploymentId = deploymentId
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerDeploymentPipelineStageRunProgress: CustomStringConvertible {
    public var description: String { "TriggerDeploymentPipelineStageRunProgress()" }
}