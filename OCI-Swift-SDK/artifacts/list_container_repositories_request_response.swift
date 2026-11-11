import Foundation

// MARK: - ListContainerRepositoriesRequest

public struct ListContainerRepositoriesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var compartmentIdInSubtree: Bool?
    public var repositoryId: String?
    public var displayName: String?
    public var repositoryType: String?
    public var isTopLevel: Bool?
    public var isPublic: Bool?
    public var lifecycleState: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var sortBy: ListContainerRepositoriesSortByEnum?
    public var sortOrder: ListContainerRepositoriesSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, compartmentIdInSubtree, repositoryId, displayName, repositoryType, isTopLevel, isPublic, lifecycleState, limit, page, opcRequestId, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                compartmentIdInSubtree: Bool? = nil,
                repositoryId: String? = nil,
                displayName: String? = nil,
                repositoryType: String? = nil,
                isTopLevel: Bool? = nil,
                isPublic: Bool? = nil,
                lifecycleState: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                sortBy: ListContainerRepositoriesSortByEnum? = nil,
                sortOrder: ListContainerRepositoriesSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.compartmentIdInSubtree = compartmentIdInSubtree
        self.repositoryId = repositoryId
        self.displayName = displayName
        self.repositoryType = repositoryType
        self.isTopLevel = isTopLevel
        self.isPublic = isPublic
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

extension ListContainerRepositoriesRequest: CustomStringConvertible {
    public var description: String { "ListContainerRepositoriesRequest()" }
}

// MARK: - ListContainerRepositoriesResponse

public struct ListContainerRepositoriesResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var containerRepositoryCollection: ContainerRepositoryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, containerRepositoryCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                containerRepositoryCollection: ContainerRepositoryCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.containerRepositoryCollection = containerRepositoryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListContainerRepositoriesResponse: CustomStringConvertible {
    public var description: String { "ListContainerRepositoriesResponse()" }
}