import Foundation
import OCICommon

// MARK: - BuildRun

public struct BuildRun: Codable, Sendable {

    public var id: String?
    public var buildRunSource: JSONValue
    public var displayName: String?
    public var compartmentId: String?
    public var projectId: String?
    public var buildPipelineId: String?
    public var buildRunArguments: BuildRunArgumentCollection?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: BuildRunLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var buildRunProgress: BuildRunProgress?
    public var commitInfo: CommitInfo?
    public var buildOutputs: BuildOutputs?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, buildRunSource, displayName, compartmentId, projectId, buildPipelineId, buildRunArguments, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, buildRunProgress, commitInfo, buildOutputs, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                buildRunSource: JSONValue,
                displayName: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                buildPipelineId: String? = nil,
                buildRunArguments: BuildRunArgumentCollection? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: BuildRunLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                buildRunProgress: BuildRunProgress? = nil,
                commitInfo: CommitInfo? = nil,
                buildOutputs: BuildOutputs? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.buildRunSource = buildRunSource
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.buildPipelineId = buildPipelineId
        self.buildRunArguments = buildRunArguments
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.buildRunProgress = buildRunProgress
        self.commitInfo = commitInfo
        self.buildOutputs = buildOutputs
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRun: CustomStringConvertible {
    public var description: String { "BuildRun()" }
}