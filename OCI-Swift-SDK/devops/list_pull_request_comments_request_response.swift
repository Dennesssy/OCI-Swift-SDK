import Foundation

// MARK: - ListPullRequestCommentsRequest

public struct ListPullRequestCommentsRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var compartmentId: String?
    public var sortOrder: ListPullRequestCommentsSortOrderEnum?
    public var sortBy: ListPullRequestCommentsSortByEnum?
    public var commentId: String?
    public var commitId: String?
    public var filePath: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, compartmentId, sortOrder, sortBy, commentId, commitId, filePath, limit, page, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                compartmentId: String? = nil,
                sortOrder: ListPullRequestCommentsSortOrderEnum? = nil,
                sortBy: ListPullRequestCommentsSortByEnum? = nil,
                commentId: String? = nil,
                commitId: String? = nil,
                filePath: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.compartmentId = compartmentId
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.commentId = commentId
        self.commitId = commitId
        self.filePath = filePath
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestCommentsRequest: CustomStringConvertible {
    public var description: String { "ListPullRequestCommentsRequest()" }
}

// MARK: - ListPullRequestCommentsResponse

public struct ListPullRequestCommentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var pullRequestCommentCollection: PullRequestCommentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, pullRequestCommentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                pullRequestCommentCollection: PullRequestCommentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.pullRequestCommentCollection = pullRequestCommentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestCommentsResponse: CustomStringConvertible {
    public var description: String { "ListPullRequestCommentsResponse()" }
}