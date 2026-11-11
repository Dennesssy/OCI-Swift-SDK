import Foundation

// MARK: - ListAuthorsRequest

public struct ListAuthorsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListAuthorsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refName, limit, page, sortOrder, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                refName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListAuthorsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.refName = refName
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAuthorsRequest: CustomStringConvertible {
    public var description: String { "ListAuthorsRequest()" }
}

// MARK: - ListAuthorsResponse

public struct ListAuthorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryAuthorCollection: RepositoryAuthorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryAuthorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryAuthorCollection: RepositoryAuthorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryAuthorCollection = repositoryAuthorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAuthorsResponse: CustomStringConvertible {
    public var description: String { "ListAuthorsResponse()" }
}