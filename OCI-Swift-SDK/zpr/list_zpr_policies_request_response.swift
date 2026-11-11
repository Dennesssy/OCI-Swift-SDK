import Foundation

// MARK: - ListZprPoliciesRequest

public struct ListZprPoliciesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ZprPolicyLifecycleStateEnum?
    public var name: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListZprPoliciesSortOrderEnum?
    public var sortBy: ListZprPoliciesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, name, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: ZprPolicyLifecycleStateEnum? = nil,
                name: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListZprPoliciesSortOrderEnum? = nil,
                sortBy: ListZprPoliciesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.name = name
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

extension ListZprPoliciesRequest: CustomStringConvertible {
    public var description: String { "ListZprPoliciesRequest()" }
}

// MARK: - ListZprPoliciesResponse

public struct ListZprPoliciesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var zprPolicyCollection: ZprPolicyCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, zprPolicyCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                zprPolicyCollection: ZprPolicyCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.zprPolicyCollection = zprPolicyCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListZprPoliciesResponse: CustomStringConvertible {
    public var description: String { "ListZprPoliciesResponse()" }
}