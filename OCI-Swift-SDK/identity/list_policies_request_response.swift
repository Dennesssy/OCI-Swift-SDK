import Foundation

// MARK: - ListPoliciesRequest

public struct ListPoliciesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListPoliciesSortByEnum?
    public var sortOrder: ListPoliciesSortOrderEnum?
    public var lifecycleState: PolicyLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListPoliciesSortByEnum? = nil,
                sortOrder: ListPoliciesSortOrderEnum? = nil,
                lifecycleState: PolicyLifecycleStateEnum? = nil,
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

extension ListPoliciesRequest: CustomStringConvertible {
    public var description: String { "ListPoliciesRequest()" }
}

// MARK: - ListPoliciesResponse

public struct ListPoliciesResponse: Codable, Sendable {
    public var items: [Policy]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [Policy]? = nil,
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

extension ListPoliciesResponse: CustomStringConvertible {
    public var description: String { "ListPoliciesResponse()" }
}