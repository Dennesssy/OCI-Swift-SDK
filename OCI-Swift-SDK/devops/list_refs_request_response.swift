import Foundation

// MARK: - ListRefsRequest

public struct ListRefsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refType: ListRefsRefTypeEnum?
    public var commitId: String?
    public var limit: Int?
    public var page: String?
    public var refName: String?
    public var sortOrder: ListRefsSortOrderEnum?
    public var sortBy: ListRefsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refType, commitId, limit, page, refName, sortOrder, sortBy, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                refType: ListRefsRefTypeEnum? = nil,
                commitId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                refName: String? = nil,
                sortOrder: ListRefsSortOrderEnum? = nil,
                sortBy: ListRefsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.refType = refType
        self.commitId = commitId
        self.limit = limit
        self.page = page
        self.refName = refName
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRefsRequest: CustomStringConvertible {
    public var description: String { "ListRefsRequest()" }
}

// MARK: - ListRefsResponse

public struct ListRefsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryRefCollection: RepositoryRefCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryRefCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryRefCollection: RepositoryRefCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryRefCollection = repositoryRefCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRefsResponse: CustomStringConvertible {
    public var description: String { "ListRefsResponse()" }
}