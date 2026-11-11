import Foundation

// MARK: - ListLimitsIncreaseItemRequestsRequest

public struct ListLimitsIncreaseItemRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var service: String?
    public var lifecycleState: String?
    public var limitsIncreaseRequestId: String?
    public var sortOrder: ListLimitsIncreaseItemRequestsSortOrderEnum?
    public var sortBy: ListLimitsIncreaseItemRequestsSortByEnum?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, service, lifecycleState, limitsIncreaseRequestId, sortOrder, sortBy, limit, page, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                service: String? = nil,
                lifecycleState: String? = nil,
                limitsIncreaseRequestId: String? = nil,
                sortOrder: ListLimitsIncreaseItemRequestsSortOrderEnum? = nil,
                sortBy: ListLimitsIncreaseItemRequestsSortByEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.service = service
        self.lifecycleState = lifecycleState
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLimitsIncreaseItemRequestsRequest: CustomStringConvertible {
    public var description: String { "ListLimitsIncreaseItemRequestsRequest()" }
}

// MARK: - ListLimitsIncreaseItemRequestsResponse

public struct ListLimitsIncreaseItemRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var limitsIncreaseItemRequestCollection: LimitsIncreaseItemRequestCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, limitsIncreaseItemRequestCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                limitsIncreaseItemRequestCollection: LimitsIncreaseItemRequestCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.limitsIncreaseItemRequestCollection = limitsIncreaseItemRequestCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLimitsIncreaseItemRequestsResponse: CustomStringConvertible {
    public var description: String { "ListLimitsIncreaseItemRequestsResponse()" }
}