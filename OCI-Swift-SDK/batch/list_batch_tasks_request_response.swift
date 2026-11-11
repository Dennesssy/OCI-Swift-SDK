import Foundation

// MARK: - ListBatchTasksRequest

public struct ListBatchTasksRequest: Codable, Sendable {
    public var compartmentId: String?
    public var batchJobId: String?
    public var lifecycleState: BatchTaskLifecycleStateEnum?
    public var name: String?
    public var taskId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchTasksSortOrderEnum?
    public var sortBy: ListBatchTasksSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, batchJobId, lifecycleState, name, taskId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                batchJobId: String? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil,
                name: String? = nil,
                taskId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchTasksSortOrderEnum? = nil,
                sortBy: ListBatchTasksSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.batchJobId = batchJobId
        self.lifecycleState = lifecycleState
        self.name = name
        self.taskId = taskId
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

extension ListBatchTasksRequest: CustomStringConvertible {
    public var description: String { "ListBatchTasksRequest()" }
}

// MARK: - ListBatchTasksResponse

public struct ListBatchTasksResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchTaskCollection: BatchTaskCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchTaskCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchTaskCollection: BatchTaskCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchTaskCollection = batchTaskCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchTasksResponse: CustomStringConvertible {
    public var description: String { "ListBatchTasksResponse()" }
}