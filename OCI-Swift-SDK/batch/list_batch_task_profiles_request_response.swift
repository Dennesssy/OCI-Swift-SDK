import Foundation

// MARK: - ListBatchTaskProfilesRequest

public struct ListBatchTaskProfilesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: BatchTaskProfileLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchTaskProfilesSortOrderEnum?
    public var sortBy: ListBatchTaskProfilesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: BatchTaskProfileLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchTaskProfilesSortOrderEnum? = nil,
                sortBy: ListBatchTaskProfilesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
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

extension ListBatchTaskProfilesRequest: CustomStringConvertible {
    public var description: String { "ListBatchTaskProfilesRequest()" }
}

// MARK: - ListBatchTaskProfilesResponse

public struct ListBatchTaskProfilesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchTaskProfileCollection: BatchTaskProfileCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchTaskProfileCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchTaskProfileCollection: BatchTaskProfileCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchTaskProfileCollection = batchTaskProfileCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchTaskProfilesResponse: CustomStringConvertible {
    public var description: String { "ListBatchTaskProfilesResponse()" }
}