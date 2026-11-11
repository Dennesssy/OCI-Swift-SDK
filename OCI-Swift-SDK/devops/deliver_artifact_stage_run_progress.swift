import Foundation

// MARK: - DeliverArtifactStageRunProgress

public struct DeliverArtifactStageRunProgress: Codable, Sendable {

    public var stageDisplayName: String?
    public var buildPipelineStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection?
    public var deliveredArtifacts: DeliveredArtifactCollection?
    public var status: BuildPipelineStageRunProgressStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case stageDisplayName, buildPipelineStageId, timeStarted, timeFinished, buildPipelineStagePredecessors, deliveredArtifacts, status
    }

    public init(
                stageDisplayName: String? = nil,
                buildPipelineStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection? = nil,
                deliveredArtifacts: DeliveredArtifactCollection? = nil,
                status: BuildPipelineStageRunProgressStatusEnum? = nil
    ) {
        self.stageDisplayName = stageDisplayName
        self.buildPipelineStageId = buildPipelineStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.buildPipelineStagePredecessors = buildPipelineStagePredecessors
        self.deliveredArtifacts = deliveredArtifacts
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeliverArtifactStageRunProgress: CustomStringConvertible {
    public var description: String { "DeliverArtifactStageRunProgress()" }
}