import Foundation
import OCICommon

// MARK: - UpdateRepositoryDetails

public struct UpdateRepositoryDetails: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var defaultBranch: String?
    public var repositoryType: RepositoryRepositoryTypeEnum?
    public var mirrorRepositoryConfig: MirrorRepositoryConfig?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, description, defaultBranch, repositoryType, mirrorRepositoryConfig, freeformTags, definedTags
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                defaultBranch: String? = nil,
                repositoryType: RepositoryRepositoryTypeEnum? = nil,
                mirrorRepositoryConfig: MirrorRepositoryConfig? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.description = description
        self.defaultBranch = defaultBranch
        self.repositoryType = repositoryType
        self.mirrorRepositoryConfig = mirrorRepositoryConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
