import Foundation
import OCICommon

// MARK: - RepositoryCommitSummary

public struct RepositoryCommitSummary: Codable, Sendable {

    public var commitId: String?
    public var commitMessage: String?
    public var authorName: String?
    public var authorEmail: String?
    public var committerName: String?
    public var committerEmail: String?
    public var parentCommitIds: [String]
    public var timeCreated: Date?
    public var treeId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case commitId, commitMessage, authorName, authorEmail, committerName, committerEmail, parentCommitIds, timeCreated, treeId, freeformTags, definedTags, systemTags
    }

    public init(
                commitId: String? = nil,
                commitMessage: String? = nil,
                authorName: String? = nil,
                authorEmail: String? = nil,
                committerName: String? = nil,
                committerEmail: String? = nil,
                parentCommitIds: [String],
                timeCreated: Date? = nil,
                treeId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.commitId = commitId
        self.commitMessage = commitMessage
        self.authorName = authorName
        self.authorEmail = authorEmail
        self.committerName = committerName
        self.committerEmail = committerEmail
        self.parentCommitIds = parentCommitIds
        self.timeCreated = timeCreated
        self.treeId = treeId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryCommitSummary: CustomStringConvertible {
    public var description: String { "RepositoryCommitSummary()" }
}