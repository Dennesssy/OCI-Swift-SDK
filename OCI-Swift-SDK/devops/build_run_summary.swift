import Foundation
import OCICommon

// MARK: - BuildRunSummary

public struct BuildRunSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var buildPipelineId: String?
    public var buildRunSource: JSONValue
    public var displayName: String?
    public var buildRunArguments: BuildRunArgumentCollection?
    public var buildRunProgressSummary: BuildRunProgressSummary?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: BuildRunLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var commitInfo: CommitInfo?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, projectId, buildPipelineId, buildRunSource, displayName, buildRunArguments, buildRunProgressSummary, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, commitInfo, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                buildPipelineId: String? = nil,
                buildRunSource: JSONValue,
                displayName: String? = nil,
                buildRunArguments: BuildRunArgumentCollection? = nil,
                buildRunProgressSummary: BuildRunProgressSummary? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: BuildRunLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                commitInfo: CommitInfo? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.buildPipelineId = buildPipelineId
        self.buildRunSource = buildRunSource
        self.displayName = displayName
        self.buildRunArguments = buildRunArguments
        self.buildRunProgressSummary = buildRunProgressSummary
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.commitInfo = commitInfo
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunSummary: CustomStringConvertible {
    public var description: String { "BuildRunSummary()" }
}