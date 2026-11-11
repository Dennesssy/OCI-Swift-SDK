import Foundation

// MARK: - ListServiceProviderActionsRequest

public struct ListServiceProviderActionsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var name: String?
    public var resourceType: ListServiceProviderActionsResourceTypeEnum?
    public var serviceProviderServiceType: [ServiceProviderServiceTypeEnum]?
    public var lifecycleState: ServiceProviderActionLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListServiceProviderActionsSortOrderEnum?
    public var sortBy: ListServiceProviderActionsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, resourceType, serviceProviderServiceType, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                resourceType: ListServiceProviderActionsResourceTypeEnum? = nil,
                serviceProviderServiceType: [ServiceProviderServiceTypeEnum]? = nil,
                lifecycleState: ServiceProviderActionLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListServiceProviderActionsSortOrderEnum? = nil,
                sortBy: ListServiceProviderActionsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.resourceType = resourceType
        self.serviceProviderServiceType = serviceProviderServiceType
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

extension ListServiceProviderActionsRequest: CustomStringConvertible {
    public var description: String { "ListServiceProviderActionsRequest()" }
}

// MARK: - ListServiceProviderActionsResponse

public struct ListServiceProviderActionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var serviceProviderActionSummaryCollection: ServiceProviderActionSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, serviceProviderActionSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                serviceProviderActionSummaryCollection: ServiceProviderActionSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.serviceProviderActionSummaryCollection = serviceProviderActionSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListServiceProviderActionsResponse: CustomStringConvertible {
    public var description: String { "ListServiceProviderActionsResponse()" }
}