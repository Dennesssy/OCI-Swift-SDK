import Foundation

// MARK: - ListDynamicGroupsRequest

public struct ListDynamicGroupsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListDynamicGroupsSortByEnum?
    public var sortOrder: ListDynamicGroupsSortOrderEnum?
    public var lifecycleState: DynamicGroupLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListDynamicGroupsSortByEnum? = nil,
                sortOrder: ListDynamicGroupsSortOrderEnum? = nil,
                lifecycleState: DynamicGroupLifecycleStateEnum? = nil,
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

extension ListDynamicGroupsRequest: CustomStringConvertible {
    public var description: String { "ListDynamicGroupsRequest()" }
}

// MARK: - ListDynamicGroupsResponse

public struct ListDynamicGroupsResponse: Codable, Sendable {
    public var items: [DynamicGroup]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [DynamicGroup]? = nil,
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

extension ListDynamicGroupsResponse: CustomStringConvertible {
    public var description: String { "ListDynamicGroupsResponse()" }
}