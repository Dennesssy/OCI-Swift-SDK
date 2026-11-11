import Foundation

// MARK: - ListExternalLocationMappingMetadataRequest

public struct ListExternalLocationMappingMetadataRequest: Codable, Sendable {
    public var subscriptionServiceName: [SubscriptionTypeEnum]?
    public var compartmentId: String?
    public var subscriptionId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListExternalLocationMappingMetadataSortOrderEnum?
    public var sortBy: ListExternalLocationMappingMetadataSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case subscriptionServiceName, compartmentId, subscriptionId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                subscriptionServiceName: [SubscriptionTypeEnum]? = nil,
                compartmentId: String? = nil,
                subscriptionId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListExternalLocationMappingMetadataSortOrderEnum? = nil,
                sortBy: ListExternalLocationMappingMetadataSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.subscriptionServiceName = subscriptionServiceName
        self.compartmentId = compartmentId
        self.subscriptionId = subscriptionId
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

extension ListExternalLocationMappingMetadataRequest: CustomStringConvertible {
    public var description: String { "ListExternalLocationMappingMetadataRequest()" }
}

// MARK: - ListExternalLocationMappingMetadataResponse

public struct ListExternalLocationMappingMetadataResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var externalLocationMappingMetadatumSummaryCollection: ExternalLocationMappingMetadatumSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, externalLocationMappingMetadatumSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                externalLocationMappingMetadatumSummaryCollection: ExternalLocationMappingMetadatumSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.externalLocationMappingMetadatumSummaryCollection = externalLocationMappingMetadatumSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListExternalLocationMappingMetadataResponse: CustomStringConvertible {
    public var description: String { "ListExternalLocationMappingMetadataResponse()" }
}