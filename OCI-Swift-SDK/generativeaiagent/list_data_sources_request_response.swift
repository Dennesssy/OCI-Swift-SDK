import Foundation

// MARK: - ListDataSourcesRequest

public struct ListDataSourcesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var knowledgeBaseId: String?
    public var lifecycleState: DataSourceLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDataSourcesSortOrderEnum?
    public var sortBy: ListDataSourcesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, knowledgeBaseId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                knowledgeBaseId: String? = nil,
                lifecycleState: DataSourceLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDataSourcesSortOrderEnum? = nil,
                sortBy: ListDataSourcesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.knowledgeBaseId = knowledgeBaseId
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

extension ListDataSourcesRequest: CustomStringConvertible {
    public var description: String { "ListDataSourcesRequest()" }
}

// MARK: - ListDataSourcesResponse

public struct ListDataSourcesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var dataSourceCollection: DataSourceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, dataSourceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                dataSourceCollection: DataSourceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.dataSourceCollection = dataSourceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDataSourcesResponse: CustomStringConvertible {
    public var description: String { "ListDataSourcesResponse()" }
}