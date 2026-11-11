import Foundation

// MARK: - ListProjectCommitAnalyticsAuthorsRequest

public struct ListProjectCommitAnalyticsAuthorsRequest: Codable, Sendable {
    public var projectId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListProjectCommitAnalyticsAuthorsSortOrderEnum?
    public var opcRequestId: String?
    public var sortBy: ListProjectCommitAnalyticsAuthorsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case projectId, limit, page, sortOrder, opcRequestId, sortBy
    }

    public init(
                projectId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListProjectCommitAnalyticsAuthorsSortOrderEnum? = nil,
                opcRequestId: String? = nil,
                sortBy: ListProjectCommitAnalyticsAuthorsSortByEnum? = nil
    ) {
        self.projectId = projectId
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

extension ListProjectCommitAnalyticsAuthorsRequest: CustomStringConvertible {
    public var description: String { "ListProjectCommitAnalyticsAuthorsRequest()" }
}

// MARK: - ListProjectCommitAnalyticsAuthorsResponse

public struct ListProjectCommitAnalyticsAuthorsResponse: Codable, Sendable {
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

extension ListProjectCommitAnalyticsAuthorsResponse: CustomStringConvertible {
    public var description: String { "ListProjectCommitAnalyticsAuthorsResponse()" }
}