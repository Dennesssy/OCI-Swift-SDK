import Foundation

// MARK: - ListDelegatedResourceAccessRequestHistoriesRequest

public struct ListDelegatedResourceAccessRequestHistoriesRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDelegatedResourceAccessRequestHistoriesSortOrderEnum?
    public var sortBy: ListDelegatedResourceAccessRequestHistoriesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDelegatedResourceAccessRequestHistoriesSortOrderEnum? = nil,
                sortBy: ListDelegatedResourceAccessRequestHistoriesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
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

extension ListDelegatedResourceAccessRequestHistoriesRequest: CustomStringConvertible {
    public var description: String { "ListDelegatedResourceAccessRequestHistoriesRequest()" }
}

// MARK: - ListDelegatedResourceAccessRequestHistoriesResponse

public struct ListDelegatedResourceAccessRequestHistoriesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var delegatedResourceAccessRequestHistoryCollection: DelegatedResourceAccessRequestHistoryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, delegatedResourceAccessRequestHistoryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                delegatedResourceAccessRequestHistoryCollection: DelegatedResourceAccessRequestHistoryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.delegatedResourceAccessRequestHistoryCollection = delegatedResourceAccessRequestHistoryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegatedResourceAccessRequestHistoriesResponse: CustomStringConvertible {
    public var description: String { "ListDelegatedResourceAccessRequestHistoriesResponse()" }
}