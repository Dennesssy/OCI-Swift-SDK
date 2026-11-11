import Foundation

// MARK: - buildpipelinestagerunprogress

public struct buildpipelinestagerunprogress: Codable, Sendable {

    public var jsonData: Data?
    public var stageDisplayName: String?
    public var buildPipelineStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var status: BuildPipelineStageRunProgressStatusEnum?
    public var buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection?
    public var buildPipelineStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, stageDisplayName, buildPipelineStageId, timeStarted, timeFinished, status, buildPipelineStagePredecessors, buildPipelineStageType
    }

    public init(
                jsonData: Data? = nil,
                stageDisplayName: String? = nil,
                buildPipelineStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                status: BuildPipelineStageRunProgressStatusEnum? = nil,
                buildPipelineStagePredecessors: BuildPipelineStagePredecessorCollection? = nil,
                buildPipelineStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.stageDisplayName = stageDisplayName
        self.buildPipelineStageId = buildPipelineStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.status = status
        self.buildPipelineStagePredecessors = buildPipelineStagePredecessors
        self.buildPipelineStageType = buildPipelineStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension buildpipelinestagerunprogress: CustomStringConvertible {
    public var description: String { "buildpipelinestagerunprogress()" }
}