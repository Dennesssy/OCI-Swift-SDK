import Foundation

// MARK: - BuildMergeCheck

public struct BuildMergeCheck: Codable, Sendable {

    public var pipelineId: String?
    public var buildRunId: String?
    public var buildStatus: String?

    private enum CodingKeys: String, CodingKey {
        case pipelineId, buildRunId, buildStatus
    }

    public init(
                pipelineId: String? = nil,
                buildRunId: String? = nil,
                buildStatus: String? = nil
    ) {
        self.pipelineId = pipelineId
        self.buildRunId = buildRunId
        self.buildStatus = buildStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildMergeCheck: CustomStringConvertible {
    public var description: String { "BuildMergeCheck()" }
}