import Foundation

// MARK: - ListCostAlertSubscriptionsRequest

public struct ListCostAlertSubscriptionsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCostAlertSubscriptionsSortOrderEnum?
    public var sortBy: ListCostAlertSubscriptionsSortByEnum?
    public var name: String?
    public var lifecycleState: CostAlertSubscriptionLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, limit, page, sortOrder, sortBy, name, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListCostAlertSubscriptionsSortOrderEnum? = nil,
                sortBy: ListCostAlertSubscriptionsSortByEnum? = nil,
                name: String? = nil,
                lifecycleState: CostAlertSubscriptionLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.name = name
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostAlertSubscriptionsRequest: CustomStringConvertible {
    public var description: String { "ListCostAlertSubscriptionsRequest()" }
}

// MARK: - ListCostAlertSubscriptionsResponse

public struct ListCostAlertSubscriptionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var costAlertSubscriptionCollection: CostAlertSubscriptionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, costAlertSubscriptionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                costAlertSubscriptionCollection: CostAlertSubscriptionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.costAlertSubscriptionCollection = costAlertSubscriptionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostAlertSubscriptionsResponse: CustomStringConvertible {
    public var description: String { "ListCostAlertSubscriptionsResponse()" }
}