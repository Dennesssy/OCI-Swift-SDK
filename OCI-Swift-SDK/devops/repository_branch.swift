import Foundation
import OCICommon

// MARK: - RepositoryBranch

public struct RepositoryBranch: Codable, Sendable {

    public var refName: String?
    public var fullRefName: String?
    public var repositoryId: String?
    public var commitId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case refName, fullRefName, repositoryId, commitId, freeformTags, definedTags
    }

    public init(
                refName: String? = nil,
                fullRefName: String? = nil,
                repositoryId: String? = nil,
                commitId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.refName = refName
        self.fullRefName = fullRefName
        self.repositoryId = repositoryId
        self.commitId = commitId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryBranch: CustomStringConvertible {
    public var description: String { "RepositoryBranch()" }
}