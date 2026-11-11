import Foundation

// MARK: - ListResourceAnalyticsInstancesRequest

public struct ListResourceAnalyticsInstancesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ResourceAnalyticsInstanceLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListResourceAnalyticsInstancesSortOrderEnum?
    public var sortBy: ListResourceAnalyticsInstancesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: ResourceAnalyticsInstanceLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListResourceAnalyticsInstancesSortOrderEnum? = nil,
                sortBy: ListResourceAnalyticsInstancesSortByEnum? = nil,
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

extension ListResourceAnalyticsInstancesRequest: CustomStringConvertible {
    public var description: String { "ListResourceAnalyticsInstancesRequest()" }
}

// MARK: - ListResourceAnalyticsInstancesResponse

public struct ListResourceAnalyticsInstancesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var resourceAnalyticsInstanceCollection: ResourceAnalyticsInstanceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, resourceAnalyticsInstanceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                resourceAnalyticsInstanceCollection: ResourceAnalyticsInstanceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.resourceAnalyticsInstanceCollection = resourceAnalyticsInstanceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListResourceAnalyticsInstancesResponse: CustomStringConvertible {
    public var description: String { "ListResourceAnalyticsInstancesResponse()" }
}