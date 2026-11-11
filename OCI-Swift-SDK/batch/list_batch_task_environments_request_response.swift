import Foundation

// MARK: - ListBatchTaskEnvironmentsRequest

public struct ListBatchTaskEnvironmentsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: BatchTaskEnvironmentLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBatchTaskEnvironmentsSortOrderEnum?
    public var sortBy: ListBatchTaskEnvironmentsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: BatchTaskEnvironmentLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBatchTaskEnvironmentsSortOrderEnum? = nil,
                sortBy: ListBatchTaskEnvironmentsSortByEnum? = nil,
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

extension ListBatchTaskEnvironmentsRequest: CustomStringConvertible {
    public var description: String { "ListBatchTaskEnvironmentsRequest()" }
}

// MARK: - ListBatchTaskEnvironmentsResponse

public struct ListBatchTaskEnvironmentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchTaskEnvironmentCollection: BatchTaskEnvironmentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchTaskEnvironmentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchTaskEnvironmentCollection: BatchTaskEnvironmentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchTaskEnvironmentCollection = batchTaskEnvironmentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchTaskEnvironmentsResponse: CustomStringConvertible {
    public var description: String { "ListBatchTaskEnvironmentsResponse()" }
}