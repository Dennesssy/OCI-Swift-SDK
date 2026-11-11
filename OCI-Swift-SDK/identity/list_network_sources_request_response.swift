import Foundation

// MARK: - ListNetworkSourcesRequest

public struct ListNetworkSourcesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListNetworkSourcesSortByEnum?
    public var sortOrder: ListNetworkSourcesSortOrderEnum?
    public var lifecycleState: NetworkSourcesLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListNetworkSourcesSortByEnum? = nil,
                sortOrder: ListNetworkSourcesSortOrderEnum? = nil,
                lifecycleState: NetworkSourcesLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.name = name
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNetworkSourcesRequest: CustomStringConvertible {
    public var description: String { "ListNetworkSourcesRequest()" }
}

// MARK: - ListNetworkSourcesResponse

public struct ListNetworkSourcesResponse: Codable, Sendable {
    public var items: [NetworkSourcesSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [NetworkSourcesSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNetworkSourcesResponse: CustomStringConvertible {
    public var description: String { "ListNetworkSourcesResponse()" }
}