import Foundation

// MARK: - ListNetworkAnchorsRequest

public struct ListNetworkAnchorsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var subscriptionId: String?
    public var subscriptionServiceName: ListNetworkAnchorsSubscriptionServiceNameEnum?
    public var networkAnchorLifecycleState: NetworkAnchorNetworkAnchorLifecycleStateEnum?
    public var displayName: String?
    public var externalLocation: String?
    public var networkAnchorOciSubnetId: String?
    public var networkAnchorOciVcnId: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var shouldFetchVcnName: Bool?
    public var sortOrder: ListNetworkAnchorsSortOrderEnum?
    public var sortBy: ListNetworkAnchorsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, subscriptionId, subscriptionServiceName, networkAnchorLifecycleState, displayName, externalLocation, networkAnchorOciSubnetId, networkAnchorOciVcnId, id, limit, page, shouldFetchVcnName, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                subscriptionId: String? = nil,
                subscriptionServiceName: ListNetworkAnchorsSubscriptionServiceNameEnum? = nil,
                networkAnchorLifecycleState: NetworkAnchorNetworkAnchorLifecycleStateEnum? = nil,
                displayName: String? = nil,
                externalLocation: String? = nil,
                networkAnchorOciSubnetId: String? = nil,
                networkAnchorOciVcnId: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                shouldFetchVcnName: Bool? = nil,
                sortOrder: ListNetworkAnchorsSortOrderEnum? = nil,
                sortBy: ListNetworkAnchorsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.subscriptionId = subscriptionId
        self.subscriptionServiceName = subscriptionServiceName
        self.networkAnchorLifecycleState = networkAnchorLifecycleState
        self.displayName = displayName
        self.externalLocation = externalLocation
        self.networkAnchorOciSubnetId = networkAnchorOciSubnetId
        self.networkAnchorOciVcnId = networkAnchorOciVcnId
        self.id = id
        self.limit = limit
        self.page = page
        self.shouldFetchVcnName = shouldFetchVcnName
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNetworkAnchorsRequest: CustomStringConvertible {
    public var description: String { "ListNetworkAnchorsRequest()" }
}

// MARK: - ListNetworkAnchorsResponse

public struct ListNetworkAnchorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var networkAnchorCollection: NetworkAnchorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, networkAnchorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                networkAnchorCollection: NetworkAnchorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.networkAnchorCollection = networkAnchorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNetworkAnchorsResponse: CustomStringConvertible {
    public var description: String { "ListNetworkAnchorsResponse()" }
}