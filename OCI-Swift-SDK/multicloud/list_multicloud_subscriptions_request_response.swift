import Foundation

// MARK: - ListMulticloudSubscriptionsRequest

public struct ListMulticloudSubscriptionsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var displayName: String?
    public var sortBy: ListMulticloudSubscriptionsSortByEnum?
    public var sortOrder: ListMulticloudSubscriptionsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId, limit, page, displayName, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                displayName: String? = nil,
                sortBy: ListMulticloudSubscriptionsSortByEnum? = nil,
                sortOrder: ListMulticloudSubscriptionsSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.displayName = displayName
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudSubscriptionsRequest: CustomStringConvertible {
    public var description: String { "ListMulticloudSubscriptionsRequest()" }
}

// MARK: - ListMulticloudSubscriptionsResponse

public struct ListMulticloudSubscriptionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var multicloudSubscriptionCollection: MulticloudSubscriptionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, multicloudSubscriptionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                multicloudSubscriptionCollection: MulticloudSubscriptionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.multicloudSubscriptionCollection = multicloudSubscriptionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudSubscriptionsResponse: CustomStringConvertible {
    public var description: String { "ListMulticloudSubscriptionsResponse()" }
}