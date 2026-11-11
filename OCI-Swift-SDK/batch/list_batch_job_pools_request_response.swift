import Foundation

// MARK: - ListBatchJobPoolsRequest

public struct ListBatchJobPoolsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: BatchJobPoolLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var batchContextId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchJobPoolsSortOrderEnum?
    public var sortBy: ListBatchJobPoolsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, batchContextId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: BatchJobPoolLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                batchContextId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchJobPoolsSortOrderEnum? = nil,
                sortBy: ListBatchJobPoolsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
        self.batchContextId = batchContextId
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

extension ListBatchJobPoolsRequest: CustomStringConvertible {
    public var description: String { "ListBatchJobPoolsRequest()" }
}

// MARK: - ListBatchJobPoolsResponse

public struct ListBatchJobPoolsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchJobPoolCollection: BatchJobPoolCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchJobPoolCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchJobPoolCollection: BatchJobPoolCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchJobPoolCollection = batchJobPoolCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchJobPoolsResponse: CustomStringConvertible {
    public var description: String { "ListBatchJobPoolsResponse()" }
}