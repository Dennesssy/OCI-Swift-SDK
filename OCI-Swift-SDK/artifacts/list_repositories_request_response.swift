import Foundation

// MARK: - ListRepositoriesRequest

public struct ListRepositoriesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var displayName: String?
    public var isImmutable: Bool?
    public var lifecycleState: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var sortBy: ListRepositoriesSortByEnum?
    public var sortOrder: ListRepositoriesSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, displayName, isImmutable, lifecycleState, limit, page, opcRequestId, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                displayName: String? = nil,
                isImmutable: Bool? = nil,
                lifecycleState: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                sortBy: ListRepositoriesSortByEnum? = nil,
                sortOrder: ListRepositoriesSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.displayName = displayName
        self.isImmutable = isImmutable
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRepositoriesRequest: CustomStringConvertible {
    public var description: String { "ListRepositoriesRequest()" }
}

// MARK: - ListRepositoriesResponse

public struct ListRepositoriesResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var repositoryCollection: RepositoryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, repositoryCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                repositoryCollection: RepositoryCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.repositoryCollection = repositoryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRepositoriesResponse: CustomStringConvertible {
    public var description: String { "ListRepositoriesResponse()" }
}