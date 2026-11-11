import Foundation

// MARK: - ListDelegationSubscriptionsRequest

public struct ListDelegationSubscriptionsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: DelegationSubscriptionLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDelegationSubscriptionsSortOrderEnum?
    public var sortBy: ListDelegationSubscriptionsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: DelegationSubscriptionLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDelegationSubscriptionsSortOrderEnum? = nil,
                sortBy: ListDelegationSubscriptionsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
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

extension ListDelegationSubscriptionsRequest: CustomStringConvertible {
    public var description: String { "ListDelegationSubscriptionsRequest()" }
}

// MARK: - ListDelegationSubscriptionsResponse

public struct ListDelegationSubscriptionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var delegationSubscriptionSummaryCollection: DelegationSubscriptionSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, delegationSubscriptionSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                delegationSubscriptionSummaryCollection: DelegationSubscriptionSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.delegationSubscriptionSummaryCollection = delegationSubscriptionSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegationSubscriptionsResponse: CustomStringConvertible {
    public var description: String { "ListDelegationSubscriptionsResponse()" }
}