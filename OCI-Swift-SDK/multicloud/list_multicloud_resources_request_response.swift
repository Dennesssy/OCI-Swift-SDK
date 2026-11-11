import Foundation

// MARK: - ListMulticloudResourcesRequest

public struct ListMulticloudResourcesRequest: Codable, Sendable {
    public var resourceAnchorId: String?
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListMulticloudResourcesSortOrderEnum?
    public var sortBy: ListMulticloudResourcesSortByEnum?
    public var subscriptionServiceName: ListMulticloudResourcesSubscriptionServiceNameEnum?
    public var subscriptionId: String?
    public var externalLocation: String?
    public var resourceType: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnchorId, compartmentId, limit, page, sortOrder, sortBy, subscriptionServiceName, subscriptionId, externalLocation, resourceType, opcRequestId
    }

    public init(
                resourceAnchorId: String? = nil,
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListMulticloudResourcesSortOrderEnum? = nil,
                sortBy: ListMulticloudResourcesSortByEnum? = nil,
                subscriptionServiceName: ListMulticloudResourcesSubscriptionServiceNameEnum? = nil,
                subscriptionId: String? = nil,
                externalLocation: String? = nil,
                resourceType: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.resourceAnchorId = resourceAnchorId
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.subscriptionServiceName = subscriptionServiceName
        self.subscriptionId = subscriptionId
        self.externalLocation = externalLocation
        self.resourceType = resourceType
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudResourcesRequest: CustomStringConvertible {
    public var description: String { "ListMulticloudResourcesRequest()" }
}

// MARK: - ListMulticloudResourcesResponse

public struct ListMulticloudResourcesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var multicloudResourceCollection: MulticloudResourceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, multicloudResourceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                multicloudResourceCollection: MulticloudResourceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.multicloudResourceCollection = multicloudResourceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudResourcesResponse: CustomStringConvertible {
    public var description: String { "ListMulticloudResourcesResponse()" }
}