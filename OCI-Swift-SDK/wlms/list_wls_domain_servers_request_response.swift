import Foundation

// MARK: - ListWlsDomainServersRequest

public struct ListWlsDomainServersRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var name: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListWlsDomainServersSortOrderEnum?
    public var sortBy: ListWlsDomainServersSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, name, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                name: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListWlsDomainServersSortOrderEnum? = nil,
                sortBy: ListWlsDomainServersSortByEnum? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.name = name
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

extension ListWlsDomainServersRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainServersRequest()" }
}

// MARK: - ListWlsDomainServersResponse

public struct ListWlsDomainServersResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var serverCollection: ServerCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, serverCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                serverCollection: ServerCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.serverCollection = serverCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainServersResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainServersResponse()" }
}