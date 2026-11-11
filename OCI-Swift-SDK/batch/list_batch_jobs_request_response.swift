import Foundation

// MARK: - ListBatchJobsRequest

public struct ListBatchJobsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: BatchJobLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var batchJobPoolId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchJobsSortOrderEnum?
    public var sortBy: ListBatchJobsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, batchJobPoolId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: BatchJobLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                batchJobPoolId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchJobsSortOrderEnum? = nil,
                sortBy: ListBatchJobsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
        self.batchJobPoolId = batchJobPoolId
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

extension ListBatchJobsRequest: CustomStringConvertible {
    public var description: String { "ListBatchJobsRequest()" }
}

// MARK: - ListBatchJobsResponse

public struct ListBatchJobsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchJobCollection: BatchJobCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchJobCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchJobCollection: BatchJobCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchJobCollection = batchJobCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchJobsResponse: CustomStringConvertible {
    public var description: String { "ListBatchJobsResponse()" }
}