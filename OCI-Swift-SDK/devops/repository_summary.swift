import Foundation
import OCICommon

// MARK: - RepositorySummary

public struct RepositorySummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var name: String?
    public var parentRepositoryId: String?
    public var namespace: String?
    public var projectName: String?
    public var description: String?
    public var defaultBranch: String?
    public var repositoryType: RepositoryRepositoryTypeEnum?
    public var sshUrl: String?
    public var httpUrl: String?
    public var mirrorRepositoryConfig: MirrorRepositoryConfig?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: RepositoryLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, projectId, name, parentRepositoryId, namespace, projectName, description, defaultBranch, repositoryType, sshUrl, httpUrl, mirrorRepositoryConfig, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                name: String? = nil,
                parentRepositoryId: String? = nil,
                namespace: String? = nil,
                projectName: String? = nil,
                description: String? = nil,
                defaultBranch: String? = nil,
                repositoryType: RepositoryRepositoryTypeEnum? = nil,
                sshUrl: String? = nil,
                httpUrl: String? = nil,
                mirrorRepositoryConfig: MirrorRepositoryConfig? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: RepositoryLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.name = name
        self.parentRepositoryId = parentRepositoryId
        self.namespace = namespace
        self.projectName = projectName
        self.description = description
        self.defaultBranch = defaultBranch
        self.repositoryType = repositoryType
        self.sshUrl = sshUrl
        self.httpUrl = httpUrl
        self.mirrorRepositoryConfig = mirrorRepositoryConfig
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
