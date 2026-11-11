import Foundation
import OCICommon

// MARK: - Repository

public struct Repository: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var name: String?
    public var namespace: String?
    public var parentRepositoryId: String?
    public var projectName: String?
    public var sshUrl: String?
    public var httpUrl: String?
    public var description: String?
    public var defaultBranch: String?
    public var repositoryType: RepositoryRepositoryTypeEnum?
    public var mirrorRepositoryConfig: MirrorRepositoryConfig?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: RepositoryLifecycleStateEnum?
    public var lifecyleDetails: String?
    public var branchCount: Int?
    public var commitCount: Int?
    public var sizeInBytes: Int64?
    public var triggerBuildEvents: [RepositoryTriggerBuildEventsEnum]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, projectId, name, namespace, parentRepositoryId, projectName, sshUrl, httpUrl, description, defaultBranch, repositoryType, mirrorRepositoryConfig, timeCreated, timeUpdated, lifecycleState, lifecyleDetails, branchCount, commitCount, sizeInBytes, triggerBuildEvents, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                name: String? = nil,
                namespace: String? = nil,
                parentRepositoryId: String? = nil,
                projectName: String? = nil,
                sshUrl: String? = nil,
                httpUrl: String? = nil,
                description: String? = nil,
                defaultBranch: String? = nil,
                repositoryType: RepositoryRepositoryTypeEnum? = nil,
                mirrorRepositoryConfig: MirrorRepositoryConfig? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: RepositoryLifecycleStateEnum? = nil,
                lifecyleDetails: String? = nil,
                branchCount: Int? = nil,
                commitCount: Int? = nil,
                sizeInBytes: Int64? = nil,
                triggerBuildEvents: [RepositoryTriggerBuildEventsEnum]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.name = name
        self.namespace = namespace
        self.parentRepositoryId = parentRepositoryId
        self.projectName = projectName
        self.sshUrl = sshUrl
        self.httpUrl = httpUrl
        self.description = description
        self.defaultBranch = defaultBranch
        self.repositoryType = repositoryType
        self.mirrorRepositoryConfig = mirrorRepositoryConfig
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecyleDetails = lifecyleDetails
        self.branchCount = branchCount
        self.commitCount = commitCount
        self.sizeInBytes = sizeInBytes
        self.triggerBuildEvents = triggerBuildEvents
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
