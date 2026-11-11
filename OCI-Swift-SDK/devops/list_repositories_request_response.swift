import Foundation

// MARK: - ListRepositoriesRequest

public struct ListRepositoriesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var projectId: String?
    public var repositoryId: String?
    public var lifecycleState: RepositoryLifecycleStateEnum?
    public var name: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListRepositoriesSortOrderEnum?
    public var sortBy: ListRepositoriesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, projectId, repositoryId, lifecycleState, name, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                projectId: String? = nil,
                repositoryId: String? = nil,
                lifecycleState: RepositoryLifecycleStateEnum? = nil,
                name: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListRepositoriesSortOrderEnum? = nil,
                sortBy: ListRepositoriesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.repositoryId = repositoryId
        self.lifecycleState = lifecycleState
        self.name = name
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
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
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryCollection: RepositoryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryCollection: RepositoryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryCollection = repositoryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRepositoriesResponse: CustomStringConvertible {
    public var description: String { "ListRepositoriesResponse()" }
}