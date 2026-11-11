import Foundation

// MARK: - ListPsaWorkRequestsRequest

public struct ListPsaWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var workRequestId: String?
    public var status: ListPsaWorkRequestsStatusEnum?
    public var resourceId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListPsaWorkRequestsSortOrderEnum?
    public var sortBy: ListPsaWorkRequestsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, workRequestId, status, resourceId, opcRequestId, page, limit, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                workRequestId: String? = nil,
                status: ListPsaWorkRequestsStatusEnum? = nil,
                resourceId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListPsaWorkRequestsSortOrderEnum? = nil,
                sortBy: ListPsaWorkRequestsSortByEnum? = nil
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

extension ListPsaWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListPsaWorkRequestsRequest()" }
}

// MARK: - ListPsaWorkRequestsResponse

public struct ListPsaWorkRequestsResponse: Codable, Sendable {
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

extension ListPsaWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListPsaWorkRequestsResponse()" }
}