import Foundation

// MARK: - ListDataIngestionJobsRequest

public struct ListDataIngestionJobsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var dataSourceId: String?
    public var lifecycleState: DataIngestionJobLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDataIngestionJobsSortOrderEnum?
    public var sortBy: ListDataIngestionJobsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, dataSourceId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                dataSourceId: String? = nil,
                lifecycleState: DataIngestionJobLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDataIngestionJobsSortOrderEnum? = nil,
                sortBy: ListDataIngestionJobsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.dataSourceId = dataSourceId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
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

extension ListDataIngestionJobsRequest: CustomStringConvertible {
    public var description: String { "ListDataIngestionJobsRequest()" }
}

// MARK: - ListDataIngestionJobsResponse

public struct ListDataIngestionJobsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var dataIngestionJobCollection: DataIngestionJobCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, dataIngestionJobCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                dataIngestionJobCollection: DataIngestionJobCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.dataIngestionJobCollection = dataIngestionJobCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDataIngestionJobsResponse: CustomStringConvertible {
    public var description: String { "ListDataIngestionJobsResponse()" }
}