import Foundation

// MARK: - ListDelegatedResourceAccessRequestsRequest

public struct ListDelegatedResourceAccessRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var delegationControlId: String?
    public var resourceId: String?
    public var lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum?
    public var requestStatus: ListDelegatedResourceAccessRequestsRequestStatusEnum?
    public var timeStart: Date?
    public var timeEnd: Date?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDelegatedResourceAccessRequestsSortOrderEnum?
    public var sortBy: ListDelegatedResourceAccessRequestsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, delegationControlId, resourceId, lifecycleState, requestStatus, timeStart, timeEnd, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                delegationControlId: String? = nil,
                resourceId: String? = nil,
                lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum? = nil,
                requestStatus: ListDelegatedResourceAccessRequestsRequestStatusEnum? = nil,
                timeStart: Date? = nil,
                timeEnd: Date? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDelegatedResourceAccessRequestsSortOrderEnum? = nil,
                sortBy: ListDelegatedResourceAccessRequestsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.delegationControlId = delegationControlId
        self.resourceId = resourceId
        self.lifecycleState = lifecycleState
        self.requestStatus = requestStatus
        self.timeStart = timeStart
        self.timeEnd = timeEnd
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

extension ListDelegatedResourceAccessRequestsRequest: CustomStringConvertible {
    public var description: String { "ListDelegatedResourceAccessRequestsRequest()" }
}

// MARK: - ListDelegatedResourceAccessRequestsResponse

public struct ListDelegatedResourceAccessRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var delegatedResourceAccessRequestSummaryCollection: DelegatedResourceAccessRequestSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, delegatedResourceAccessRequestSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                delegatedResourceAccessRequestSummaryCollection: DelegatedResourceAccessRequestSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.delegatedResourceAccessRequestSummaryCollection = delegatedResourceAccessRequestSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegatedResourceAccessRequestsResponse: CustomStringConvertible {
    public var description: String { "ListDelegatedResourceAccessRequestsResponse()" }
}