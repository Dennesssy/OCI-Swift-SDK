import Foundation

// MARK: - ListZprConfigurationWorkRequestsRequest

public struct ListZprConfigurationWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var workRequestId: String?
    public var status: ListZprConfigurationWorkRequestsStatusEnum?
    public var resourceId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListZprConfigurationWorkRequestsSortOrderEnum?
    public var sortBy: ListZprConfigurationWorkRequestsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, workRequestId, status, resourceId, opcRequestId, page, limit, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                workRequestId: String? = nil,
                status: ListZprConfigurationWorkRequestsStatusEnum? = nil,
                resourceId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListZprConfigurationWorkRequestsSortOrderEnum? = nil,
                sortBy: ListZprConfigurationWorkRequestsSortByEnum? = nil
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

extension ListZprConfigurationWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListZprConfigurationWorkRequestsRequest()" }
}

// MARK: - ListZprConfigurationWorkRequestsResponse

public struct ListZprConfigurationWorkRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var workRequestSummaryCollection: WorkRequestSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, workRequestSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                workRequestSummaryCollection: WorkRequestSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.workRequestSummaryCollection = workRequestSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListZprConfigurationWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListZprConfigurationWorkRequestsResponse()" }
}