import Foundation

// MARK: - ListPullRequestAuthorsRequest

public struct ListPullRequestAuthorsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListPullRequestAuthorsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, limit, page, sortOrder, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListPullRequestAuthorsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestAuthorsRequest: CustomStringConvertible {
    public var description: String { "ListPullRequestAuthorsRequest()" }
}

// MARK: - ListPullRequestAuthorsResponse

public struct ListPullRequestAuthorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var pullRequestAuthorCollection: PullRequestAuthorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, pullRequestAuthorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                pullRequestAuthorCollection: PullRequestAuthorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.pullRequestAuthorCollection = pullRequestAuthorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestAuthorsResponse: CustomStringConvertible {
    public var description: String { "ListPullRequestAuthorsResponse()" }
}