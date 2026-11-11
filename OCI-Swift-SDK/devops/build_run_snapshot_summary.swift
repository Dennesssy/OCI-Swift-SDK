import Foundation

// MARK: - BuildRunSnapshotSummary

public struct BuildRunSnapshotSummary: Codable, Sendable {

    public var buildPipelineId: String?
    public var commitId: String?
    public var buildRunId: String?
    public var lifecycleState: BuildRunSnapshotLifecycleStateEnum
    public var lifecycleDetails: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, commitId, buildRunId, lifecycleState, lifecycleDetails, displayName, timeCreated, timeUpdated
    }

    public init(
                buildPipelineId: String? = nil,
                commitId: String? = nil,
                buildRunId: String? = nil,
                lifecycleState: BuildRunSnapshotLifecycleStateEnum,
                lifecycleDetails: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.commitId = commitId
        self.buildRunId = buildRunId
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunSnapshotSummary: CustomStringConvertible {
    public var description: String { "BuildRunSnapshotSummary()" }
}