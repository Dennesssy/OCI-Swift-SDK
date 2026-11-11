import Foundation
import OCICommon

// MARK: - RepositoryBranchSummary

public struct RepositoryBranchSummary: Codable, Sendable {

    public var refName: String?
    public var fullRefName: String?
    public var repositoryId: String?
    public var commitId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var latestCommitAuthorName: String?
    public var topNPullRequests: [PullRequestSummary]?
    public var pullRequestStateCounts: [String: Int]?

    private enum CodingKeys: String, CodingKey {
        case refName, fullRefName, repositoryId, commitId, timeCreated, timeUpdated, freeformTags, definedTags, systemTags, latestCommitAuthorName, topNPullRequests, pullRequestStateCounts
    }

    public init(
                refName: String? = nil,
                fullRefName: String? = nil,
                repositoryId: String? = nil,
                commitId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                latestCommitAuthorName: String? = nil,
                topNPullRequests: [PullRequestSummary]? = nil,
                pullRequestStateCounts: [String: Int]? = nil
    ) {
        self.refName = refName
        self.fullRefName = fullRefName
        self.repositoryId = repositoryId
        self.commitId = commitId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.latestCommitAuthorName = latestCommitAuthorName
        self.topNPullRequests = topNPullRequests
        self.pullRequestStateCounts = pullRequestStateCounts
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryBranchSummary: CustomStringConvertible {
    public var description: String { "RepositoryBranchSummary()" }
}