import Foundation

// MARK: - ListResourceAnchorsRequest

public struct ListResourceAnchorsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var linkedCompartmentId: String?
    public var lifecycleState: ResourceAnchorLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListResourceAnchorsSortOrderEnum?
    public var sortBy: ListResourceAnchorsSortByEnum?
    public var isCompartmentIdInSubtree: Bool?
    public var shouldFetchCompartmentName: Bool?
    public var subscriptionServiceName: ListResourceAnchorsSubscriptionServiceNameEnum?
    public var subscriptionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, linkedCompartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, isCompartmentIdInSubtree, shouldFetchCompartmentName, subscriptionServiceName, subscriptionId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                linkedCompartmentId: String? = nil,
                lifecycleState: ResourceAnchorLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListResourceAnchorsSortOrderEnum? = nil,
                sortBy: ListResourceAnchorsSortByEnum? = nil,
                isCompartmentIdInSubtree: Bool? = nil,
                shouldFetchCompartmentName: Bool? = nil,
                subscriptionServiceName: ListResourceAnchorsSubscriptionServiceNameEnum? = nil,
                subscriptionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.linkedCompartmentId = linkedCompartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.isCompartmentIdInSubtree = isCompartmentIdInSubtree
        self.shouldFetchCompartmentName = shouldFetchCompartmentName
        self.subscriptionServiceName = subscriptionServiceName
        self.subscriptionId = subscriptionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListResourceAnchorsRequest: CustomStringConvertible {
    public var description: String { "ListResourceAnchorsRequest()" }
}

// MARK: - ListResourceAnchorsResponse

public struct ListResourceAnchorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var resourceAnchorCollection: ResourceAnchorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, resourceAnchorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                resourceAnchorCollection: ResourceAnchorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.resourceAnchorCollection = resourceAnchorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListResourceAnchorsResponse: CustomStringConvertible {
    public var description: String { "ListResourceAnchorsResponse()" }
}