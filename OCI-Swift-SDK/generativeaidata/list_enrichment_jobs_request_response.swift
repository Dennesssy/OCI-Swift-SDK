import Foundation

// MARK: - ListEnrichmentJobsRequest

public struct ListEnrichmentJobsRequest: Codable, Sendable {
    public var semanticStoreId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: ListEnrichmentJobsLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListEnrichmentJobsSortByEnum?
    public var sortOrder: ListEnrichmentJobsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case semanticStoreId, compartmentId, displayName, lifecycleState, limit, page, sortBy, sortOrder, opcRequestId
    }

    public init(
                semanticStoreId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: ListEnrichmentJobsLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListEnrichmentJobsSortByEnum? = nil,
                sortOrder: ListEnrichmentJobsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.semanticStoreId = semanticStoreId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListEnrichmentJobsRequest: CustomStringConvertible {
    public var description: String { "ListEnrichmentJobsRequest()" }
}

// MARK: - ListEnrichmentJobsResponse

public struct ListEnrichmentJobsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var opcRequestId: String?
    public var enrichmentJobCollection: EnrichmentJobCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcPrevPage, opcRequestId, enrichmentJobCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                opcRequestId: String? = nil,
                enrichmentJobCollection: EnrichmentJobCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.opcRequestId = opcRequestId
        self.enrichmentJobCollection = enrichmentJobCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListEnrichmentJobsResponse: CustomStringConvertible {
    public var description: String { "ListEnrichmentJobsResponse()" }
}