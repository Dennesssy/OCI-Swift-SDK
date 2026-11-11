import Foundation
import OCICommon

// MARK: - CreateRepositoryDetails

public struct CreateRepositoryDetails: Codable, Sendable {

    public var name: String?
    public var projectId: String?
    public var repositoryType: RepositoryRepositoryTypeEnum
    public var parentRepositoryId: String?
    public var defaultBranch: String?
    public var mirrorRepositoryConfig: MirrorRepositoryConfig?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, projectId, repositoryType, parentRepositoryId, defaultBranch, mirrorRepositoryConfig, description, freeformTags, definedTags
    }

    public init(
                name: String? = nil,
                projectId: String? = nil,
                repositoryType: RepositoryRepositoryTypeEnum,
                parentRepositoryId: String? = nil,
                defaultBranch: String? = nil,
                mirrorRepositoryConfig: MirrorRepositoryConfig? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.projectId = projectId
        self.repositoryType = repositoryType
        self.parentRepositoryId = parentRepositoryId
        self.defaultBranch = defaultBranch
        self.mirrorRepositoryConfig = mirrorRepositoryConfig
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
