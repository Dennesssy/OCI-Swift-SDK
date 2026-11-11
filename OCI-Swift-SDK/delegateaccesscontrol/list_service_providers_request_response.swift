import Foundation

// MARK: - ListServiceProvidersRequest

public struct ListServiceProvidersRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ServiceProviderLifecycleStateEnum?
    public var name: String?
    public var supportedResourceType: ListServiceProvidersSupportedResourceTypeEnum?
    public var serviceProviderType: ServiceProviderServiceProviderTypeEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListServiceProvidersSortOrderEnum?
    public var sortBy: ListServiceProvidersSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, name, supportedResourceType, serviceProviderType, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: ServiceProviderLifecycleStateEnum? = nil,
                name: String? = nil,
                supportedResourceType: ListServiceProvidersSupportedResourceTypeEnum? = nil,
                serviceProviderType: ServiceProviderServiceProviderTypeEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListServiceProvidersSortOrderEnum? = nil,
                sortBy: ListServiceProvidersSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.name = name
        self.supportedResourceType = supportedResourceType
        self.serviceProviderType = serviceProviderType
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

extension ListServiceProvidersRequest: CustomStringConvertible {
    public var description: String { "ListServiceProvidersRequest()" }
}

// MARK: - ListServiceProvidersResponse

public struct ListServiceProvidersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var serviceProviderSummaryCollection: ServiceProviderSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, serviceProviderSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                serviceProviderSummaryCollection: ServiceProviderSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.serviceProviderSummaryCollection = serviceProviderSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListServiceProvidersResponse: CustomStringConvertible {
    public var description: String { "ListServiceProvidersResponse()" }
}