import Foundation

// MARK: - ListLimitsIncreaseRequestsRequest

public struct ListLimitsIncreaseRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: String?
    public var displayName: String?
    public var sortOrder: ListLimitsIncreaseRequestsSortOrderEnum?
    public var sortBy: ListLimitsIncreaseRequestsSortByEnum?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, sortOrder, sortBy, limit, page, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: String? = nil,
                displayName: String? = nil,
                sortOrder: ListLimitsIncreaseRequestsSortOrderEnum? = nil,
                sortBy: ListLimitsIncreaseRequestsSortByEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
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

extension ListLimitsIncreaseRequestsRequest: CustomStringConvertible {
    public var description: String { "ListLimitsIncreaseRequestsRequest()" }
}

// MARK: - ListLimitsIncreaseRequestsResponse

public struct ListLimitsIncreaseRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var limitsIncreaseRequestCollection: LimitsIncreaseRequestCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, limitsIncreaseRequestCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                limitsIncreaseRequestCollection: LimitsIncreaseRequestCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.limitsIncreaseRequestCollection = limitsIncreaseRequestCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLimitsIncreaseRequestsResponse: CustomStringConvertible {
    public var description: String { "ListLimitsIncreaseRequestsResponse()" }
}