import Foundation
import OCICommon

// MARK: - BuildRunProgress

public struct BuildRunProgress: Codable, Sendable {

    public var timeStarted: Date?
    public var timeFinished: Date?
    public var buildPipelineStageRunProgress: [String: JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case timeStarted, timeFinished, buildPipelineStageRunProgress
    }

    public init(
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                buildPipelineStageRunProgress: [String: JSONValue]? = nil
    ) {
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.buildPipelineStageRunProgress = buildPipelineStageRunProgress
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunProgress: CustomStringConvertible {
    public var description: String { "BuildRunProgress()" }
}