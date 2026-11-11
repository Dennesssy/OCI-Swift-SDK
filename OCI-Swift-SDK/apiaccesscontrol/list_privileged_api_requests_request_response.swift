import Foundation

// MARK: - ListPrivilegedApiRequestsRequest

public struct ListPrivilegedApiRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var displayName: String?
    public var resourceId: String?
    public var resourceType: String?
    public var lifecycleState: PrivilegedApiRequestLifecycleStateEnum?
    public var state: PrivilegedApiRequestStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListPrivilegedApiRequestsSortOrderEnum?
    public var sortBy: ListPrivilegedApiRequestsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, displayName, resourceId, resourceType, lifecycleState, state, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                displayName: String? = nil,
                resourceId: String? = nil,
                resourceType: String? = nil,
                lifecycleState: PrivilegedApiRequestLifecycleStateEnum? = nil,
                state: PrivilegedApiRequestStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListPrivilegedApiRequestsSortOrderEnum? = nil,
                sortBy: ListPrivilegedApiRequestsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.displayName = displayName
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.lifecycleState = lifecycleState
        self.state = state
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

extension ListPrivilegedApiRequestsRequest: CustomStringConvertible {
    public var description: String { "ListPrivilegedApiRequestsRequest()" }
}

// MARK: - ListPrivilegedApiRequestsResponse

public struct ListPrivilegedApiRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var privilegedApiRequestCollection: PrivilegedApiRequestCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, privilegedApiRequestCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                privilegedApiRequestCollection: PrivilegedApiRequestCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.privilegedApiRequestCollection = privilegedApiRequestCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPrivilegedApiRequestsResponse: CustomStringConvertible {
    public var description: String { "ListPrivilegedApiRequestsResponse()" }
}