import Foundation

// MARK: - ListMultiCloudResourceDiscoveriesRequest

public struct ListMultiCloudResourceDiscoveriesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var multiCloudResourceDiscoveryId: String?
    public var lifecycleState: MultiCloudResourceDiscoveryLifecycleStateEnum?
    public var oracleDbAzureConnectorId: String?
    public var resourceType: MultiCloudResourceDiscoveryResourceTypeEnum?
    public var resourcesFilter: [String]?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListMultiCloudResourceDiscoveriesSortOrderEnum?
    public var sortBy: ListMultiCloudResourceDiscoveriesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, multiCloudResourceDiscoveryId, lifecycleState, oracleDbAzureConnectorId, resourceType, resourcesFilter, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                multiCloudResourceDiscoveryId: String? = nil,
                lifecycleState: MultiCloudResourceDiscoveryLifecycleStateEnum? = nil,
                oracleDbAzureConnectorId: String? = nil,
                resourceType: MultiCloudResourceDiscoveryResourceTypeEnum? = nil,
                resourcesFilter: [String]? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListMultiCloudResourceDiscoveriesSortOrderEnum? = nil,
                sortBy: ListMultiCloudResourceDiscoveriesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.multiCloudResourceDiscoveryId = multiCloudResourceDiscoveryId
        self.lifecycleState = lifecycleState
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.resourceType = resourceType
        self.resourcesFilter = resourcesFilter
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

extension ListMultiCloudResourceDiscoveriesRequest: CustomStringConvertible {
    public var description: String { "ListMultiCloudResourceDiscoveriesRequest()" }
}

// MARK: - ListMultiCloudResourceDiscoveriesResponse

public struct ListMultiCloudResourceDiscoveriesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var multiCloudResourceDiscoverySummaryCollection: MultiCloudResourceDiscoverySummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, multiCloudResourceDiscoverySummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                multiCloudResourceDiscoverySummaryCollection: MultiCloudResourceDiscoverySummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.multiCloudResourceDiscoverySummaryCollection = multiCloudResourceDiscoverySummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMultiCloudResourceDiscoveriesResponse: CustomStringConvertible {
    public var description: String { "ListMultiCloudResourceDiscoveriesResponse()" }
}