import Foundation

// MARK: - ListGdpWorkRequestsRequest

public struct ListGdpWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var workRequestId: String?
    public var status: ListGdpWorkRequestsStatusEnum?
    public var resourceId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListGdpWorkRequestsSortOrderEnum?
    public var sortBy: ListGdpWorkRequestsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, workRequestId, status, resourceId, opcRequestId, page, limit, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                workRequestId: String? = nil,
                status: ListGdpWorkRequestsStatusEnum? = nil,
                resourceId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListGdpWorkRequestsSortOrderEnum? = nil,
                sortBy: ListGdpWorkRequestsSortByEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.workRequestId = workRequestId
        self.status = status
        self.resourceId = resourceId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGdpWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListGdpWorkRequestsRequest()" }
}

// MARK: - ListGdpWorkRequestsResponse

public struct ListGdpWorkRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var gdpWorkRequestSummaryCollection: GdpWorkRequestSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, gdpWorkRequestSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                gdpWorkRequestSummaryCollection: GdpWorkRequestSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.gdpWorkRequestSummaryCollection = gdpWorkRequestSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGdpWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListGdpWorkRequestsResponse()" }
}