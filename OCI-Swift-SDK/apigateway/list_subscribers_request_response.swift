import Foundation

// MARK: - ListSubscribersRequest

public struct ListSubscribersRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: SubscriberLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListSubscribersSortOrderEnum?
    public var sortBy: ListSubscribersSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: SubscriberLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListSubscribersSortOrderEnum? = nil,
                sortBy: ListSubscribersSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
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

extension ListSubscribersRequest: CustomStringConvertible {
    public var description: String { "ListSubscribersRequest()" }
}

// MARK: - ListSubscribersResponse

public struct ListSubscribersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var subscriberCollection: SubscriberCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, subscriberCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                subscriberCollection: SubscriberCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.subscriberCollection = subscriberCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSubscribersResponse: CustomStringConvertible {
    public var description: String { "ListSubscribersResponse()" }
}