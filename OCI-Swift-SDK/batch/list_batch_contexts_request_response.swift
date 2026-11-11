import Foundation

// MARK: - ListBatchContextsRequest

public struct ListBatchContextsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: BatchContextLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchContextsSortOrderEnum?
    public var sortBy: ListBatchContextsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: BatchContextLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchContextsSortOrderEnum? = nil,
                sortBy: ListBatchContextsSortByEnum? = nil,
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

extension ListBatchContextsRequest: CustomStringConvertible {
    public var description: String { "ListBatchContextsRequest()" }
}

// MARK: - ListBatchContextsResponse

public struct ListBatchContextsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchContextCollection: BatchContextCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchContextCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchContextCollection: BatchContextCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchContextCollection = batchContextCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchContextsResponse: CustomStringConvertible {
    public var description: String { "ListBatchContextsResponse()" }
}