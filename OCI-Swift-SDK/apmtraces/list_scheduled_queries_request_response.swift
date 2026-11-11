import Foundation

// MARK: - ListScheduledQueriesRequest

public struct ListScheduledQueriesRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var displayName: String?
    public var sortOrder: ListScheduledQueriesSortOrderEnum?
    public var sortBy: ListScheduledQueriesSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, limit, page, displayName, sortOrder, sortBy
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                displayName: String? = nil,
                sortOrder: ListScheduledQueriesSortOrderEnum? = nil,
                sortBy: ListScheduledQueriesSortByEnum? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.displayName = displayName
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListScheduledQueriesRequest: CustomStringConvertible {
    public var description: String { "ListScheduledQueriesRequest()" }
}

// MARK: - ListScheduledQueriesResponse

public struct ListScheduledQueriesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var scheduledQueryCollection: ScheduledQueryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, scheduledQueryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                scheduledQueryCollection: ScheduledQueryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.scheduledQueryCollection = scheduledQueryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListScheduledQueriesResponse: CustomStringConvertible {
    public var description: String { "ListScheduledQueriesResponse()" }
}