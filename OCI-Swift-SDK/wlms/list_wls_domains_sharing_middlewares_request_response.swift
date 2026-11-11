import Foundation

// MARK: - ListWlsDomainsSharingMiddlewaresRequest

public struct ListWlsDomainsSharingMiddlewaresRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListWlsDomainsSharingMiddlewaresSortOrderEnum?
    public var sortBy: ListWlsDomainsSharingMiddlewaresSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListWlsDomainsSharingMiddlewaresSortOrderEnum? = nil,
                sortBy: ListWlsDomainsSharingMiddlewaresSortByEnum? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainsSharingMiddlewaresRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainsSharingMiddlewaresRequest()" }
}

// MARK: - ListWlsDomainsSharingMiddlewaresResponse

public struct ListWlsDomainsSharingMiddlewaresResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var wlsDomainCollection: WlsDomainCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, wlsDomainCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                wlsDomainCollection: WlsDomainCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.wlsDomainCollection = wlsDomainCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainsSharingMiddlewaresResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainsSharingMiddlewaresResponse()" }
}