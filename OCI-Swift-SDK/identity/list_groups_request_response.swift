import Foundation

// MARK: - ListGroupsRequest

public struct ListGroupsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListGroupsSortByEnum?
    public var sortOrder: ListGroupsSortOrderEnum?
    public var lifecycleState: GroupLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListGroupsSortByEnum? = nil,
                sortOrder: ListGroupsSortOrderEnum? = nil,
                lifecycleState: GroupLifecycleStateEnum? = nil,
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

extension ListGroupsRequest: CustomStringConvertible {
    public var description: String { "ListGroupsRequest()" }
}

// MARK: - ListGroupsResponse

public struct ListGroupsResponse: Codable, Sendable {
    public var items: [Group]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [Group]? = nil,
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

extension ListGroupsResponse: CustomStringConvertible {
    public var description: String { "ListGroupsResponse()" }
}