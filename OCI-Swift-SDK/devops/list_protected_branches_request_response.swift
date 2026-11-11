import Foundation

// MARK: - ListProtectedBranchesRequest

public struct ListProtectedBranchesRequest: Codable, Sendable {
    public var repositoryId: String?
    public var name: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListProtectedBranchesSortOrderEnum?
    public var sortBy: ListProtectedBranchesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, name, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                name: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListProtectedBranchesSortOrderEnum? = nil,
                sortBy: ListProtectedBranchesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
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

extension ListProtectedBranchesRequest: CustomStringConvertible {
    public var description: String { "ListProtectedBranchesRequest()" }
}

// MARK: - ListProtectedBranchesResponse

public struct ListProtectedBranchesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var protectedBranchCollection: ProtectedBranchCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, protectedBranchCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                protectedBranchCollection: ProtectedBranchCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.protectedBranchCollection = protectedBranchCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListProtectedBranchesResponse: CustomStringConvertible {
    public var description: String { "ListProtectedBranchesResponse()" }
}