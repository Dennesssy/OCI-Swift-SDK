import Foundation

// MARK: - ListExternalLocationSummariesMetadataRequest

public struct ListExternalLocationSummariesMetadataRequest: Codable, Sendable {
    public var subscriptionServiceName: ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum
    public var compartmentId: String?
    public var subscriptionId: String?
    public var entityType: ListExternalLocationSummariesMetadataEntityTypeEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListExternalLocationSummariesMetadataSortOrderEnum?
    public var sortBy: ListExternalLocationSummariesMetadataSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case subscriptionServiceName, compartmentId, subscriptionId, entityType, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                subscriptionServiceName: ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum,
                compartmentId: String? = nil,
                subscriptionId: String? = nil,
                entityType: ListExternalLocationSummariesMetadataEntityTypeEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListExternalLocationSummariesMetadataSortOrderEnum? = nil,
                sortBy: ListExternalLocationSummariesMetadataSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.subscriptionServiceName = subscriptionServiceName
        self.compartmentId = compartmentId
        self.subscriptionId = subscriptionId
        self.entityType = entityType
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

extension ListExternalLocationSummariesMetadataRequest: CustomStringConvertible {
    public var description: String { "ListExternalLocationSummariesMetadataRequest()" }
}

// MARK: - ListExternalLocationSummariesMetadataResponse

public struct ListExternalLocationSummariesMetadataResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var externalLocationSummariesMetadatumSummaryCollection: ExternalLocationSummariesMetadatumSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, externalLocationSummariesMetadatumSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                externalLocationSummariesMetadatumSummaryCollection: ExternalLocationSummariesMetadatumSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.externalLocationSummariesMetadatumSummaryCollection = externalLocationSummariesMetadatumSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListExternalLocationSummariesMetadataResponse: CustomStringConvertible {
    public var description: String { "ListExternalLocationSummariesMetadataResponse()" }
}