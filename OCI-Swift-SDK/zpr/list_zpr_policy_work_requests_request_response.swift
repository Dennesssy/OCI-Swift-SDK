import Foundation

// MARK: - ListZprPolicyWorkRequestsRequest

public struct ListZprPolicyWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var workRequestId: String?
    public var status: ListZprPolicyWorkRequestsStatusEnum?
    public var resourceId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListZprPolicyWorkRequestsSortOrderEnum?
    public var sortBy: ListZprPolicyWorkRequestsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, workRequestId, status, resourceId, opcRequestId, page, limit, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                workRequestId: String? = nil,
                status: ListZprPolicyWorkRequestsStatusEnum? = nil,
                resourceId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListZprPolicyWorkRequestsSortOrderEnum? = nil,
                sortBy: ListZprPolicyWorkRequestsSortByEnum? = nil
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

extension ListZprPolicyWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListZprPolicyWorkRequestsRequest()" }
}

// MARK: - ListZprPolicyWorkRequestsResponse

public struct ListZprPolicyWorkRequestsResponse: Codable, Sendable {
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

extension ListZprPolicyWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListZprPolicyWorkRequestsResponse()" }
}