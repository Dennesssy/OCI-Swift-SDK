import Foundation

// MARK: - ListPathsRequest

public struct ListPathsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ref: String?
    public var pathsInSubtree: Bool?
    public var folderPath: String?
    public var limit: Int?
    public var page: String?
    public var displayName: String?
    public var sortOrder: ListPathsSortOrderEnum?
    public var sortBy: ListPathsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ref, pathsInSubtree, folderPath, limit, page, displayName, sortOrder, sortBy, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                ref: String? = nil,
                pathsInSubtree: Bool? = nil,
                folderPath: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                displayName: String? = nil,
                sortOrder: ListPathsSortOrderEnum? = nil,
                sortBy: ListPathsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.ref = ref
        self.pathsInSubtree = pathsInSubtree
        self.folderPath = folderPath
        self.limit = limit
        self.page = page
        self.displayName = displayName
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPathsRequest: CustomStringConvertible {
    public var description: String { "ListPathsRequest()" }
}

// MARK: - ListPathsResponse

public struct ListPathsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryPathCollection: RepositoryPathCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryPathCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryPathCollection: RepositoryPathCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryPathCollection = repositoryPathCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPathsResponse: CustomStringConvertible {
    public var description: String { "ListPathsResponse()" }
}