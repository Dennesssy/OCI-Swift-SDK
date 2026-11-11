import Foundation

// MARK: - ListBatchJobTasksRequest

public struct ListBatchJobTasksRequest: Codable, Sendable {
    public var batchJobId: String?
    public var lifecycleState: BatchTaskLifecycleStateEnum?
    public var name: String?
    public var taskId: String?
    public var groupTaskName: String?
    public var type: BatchTaskTypeEnum?
    public var hierarchyView: ListBatchJobTasksHierarchyViewEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchJobTasksSortOrderEnum?
    public var sortBy: ListBatchJobTasksSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, lifecycleState, name, taskId, groupTaskName, type, hierarchyView, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                batchJobId: String? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil,
                name: String? = nil,
                taskId: String? = nil,
                groupTaskName: String? = nil,
                type: BatchTaskTypeEnum? = nil,
                hierarchyView: ListBatchJobTasksHierarchyViewEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchJobTasksSortOrderEnum? = nil,
                sortBy: ListBatchJobTasksSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchJobId = batchJobId
        self.lifecycleState = lifecycleState
        self.name = name
        self.taskId = taskId
        self.groupTaskName = groupTaskName
        self.type = type
        self.hierarchyView = hierarchyView
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

extension ListBatchJobTasksRequest: CustomStringConvertible {
    public var description: String { "ListBatchJobTasksRequest()" }
}

// MARK: - ListBatchJobTasksResponse

public struct ListBatchJobTasksResponse: Codable, Sendable {
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

extension ListBatchJobTasksResponse: CustomStringConvertible {
    public var description: String { "ListBatchJobTasksResponse()" }
}