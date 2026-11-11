import Foundation

// MARK: - ListRepositoryCommitAnalyticsAuthorsRequest

public struct ListRepositoryCommitAnalyticsAuthorsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListRepositoryCommitAnalyticsAuthorsSortOrderEnum?
    public var opcRequestId: String?
    public var sortBy: ListRepositoryCommitAnalyticsAuthorsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, limit, page, sortOrder, opcRequestId, sortBy
    }

    public init(
                repositoryId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListRepositoryCommitAnalyticsAuthorsSortOrderEnum? = nil,
                opcRequestId: String? = nil,
                sortBy: ListRepositoryCommitAnalyticsAuthorsSortByEnum? = nil
    ) {
        self.repositoryId = repositoryId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRepositoryCommitAnalyticsAuthorsRequest: CustomStringConvertible {
    public var description: String { "ListRepositoryCommitAnalyticsAuthorsRequest()" }
}

// MARK: - ListRepositoryCommitAnalyticsAuthorsResponse

public struct ListRepositoryCommitAnalyticsAuthorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var commitAnalyticsAuthorCollection: CommitAnalyticsAuthorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, commitAnalyticsAuthorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                commitAnalyticsAuthorCollection: CommitAnalyticsAuthorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.commitAnalyticsAuthorCollection = commitAnalyticsAuthorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRepositoryCommitAnalyticsAuthorsResponse: CustomStringConvertible {
    public var description: String { "ListRepositoryCommitAnalyticsAuthorsResponse()" }
}