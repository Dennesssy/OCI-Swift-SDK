import Foundation

// MARK: - RepositoryCommit

public struct RepositoryCommit: Codable, Sendable {

    public var commitId: String?
    public var commitMessage: String?
    public var authorName: String?
    public var authorEmail: String?
    public var committerName: String?
    public var committerEmail: String?
    public var parentCommitIds: [String]?
    public var timeCreated: Date?
    public var treeId: String?

    private enum CodingKeys: String, CodingKey {
        case commitId, commitMessage, authorName, authorEmail, committerName, committerEmail, parentCommitIds, timeCreated, treeId
    }

    public init(
                commitId: String? = nil,
                commitMessage: String? = nil,
                authorName: String? = nil,
                authorEmail: String? = nil,
                committerName: String? = nil,
                committerEmail: String? = nil,
                parentCommitIds: [String]? = nil,
                timeCreated: Date? = nil,
                treeId: String? = nil
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
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryCommit: CustomStringConvertible {
    public var description: String { "RepositoryCommit()" }
}