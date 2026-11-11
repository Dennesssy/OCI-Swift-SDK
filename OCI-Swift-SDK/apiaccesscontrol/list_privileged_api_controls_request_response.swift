import Foundation

// MARK: - ListPrivilegedApiControlsRequest

public struct ListPrivilegedApiControlsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var lifecycleState: PrivilegedApiControlLifecycleStateEnum?
    public var displayName: String?
    public var resourceType: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListPrivilegedApiControlsSortOrderEnum?
    public var sortBy: ListPrivilegedApiControlsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, lifecycleState, displayName, resourceType, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                lifecycleState: PrivilegedApiControlLifecycleStateEnum? = nil,
                displayName: String? = nil,
                resourceType: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListPrivilegedApiControlsSortOrderEnum? = nil,
                sortBy: ListPrivilegedApiControlsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.resourceType = resourceType
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

extension ListPrivilegedApiControlsRequest: CustomStringConvertible {
    public var description: String { "ListPrivilegedApiControlsRequest()" }
}

// MARK: - ListPrivilegedApiControlsResponse

public struct ListPrivilegedApiControlsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var privilegedApiControlCollection: PrivilegedApiControlCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, privilegedApiControlCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                privilegedApiControlCollection: PrivilegedApiControlCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.privilegedApiControlCollection = privilegedApiControlCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPrivilegedApiControlsResponse: CustomStringConvertible {
    public var description: String { "ListPrivilegedApiControlsResponse()" }
}