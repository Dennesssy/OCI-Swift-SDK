import Foundation

// MARK: - ListPublicVantagePointsRequest

public struct ListPublicVantagePointsRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListPublicVantagePointsSortOrderEnum?
    public var sortBy: ListPublicVantagePointsSortByEnum?
    public var displayName: String?
    public var name: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, limit, page, sortOrder, sortBy, displayName, name, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListPublicVantagePointsSortOrderEnum? = nil,
                sortBy: ListPublicVantagePointsSortByEnum? = nil,
                displayName: String? = nil,
                name: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.displayName = displayName
        self.name = name
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPublicVantagePointsRequest: CustomStringConvertible {
    public var description: String { "ListPublicVantagePointsRequest()" }
}

// MARK: - ListPublicVantagePointsResponse

public struct ListPublicVantagePointsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var publicVantagePointCollection: PublicVantagePointCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, publicVantagePointCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                publicVantagePointCollection: PublicVantagePointCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.publicVantagePointCollection = publicVantagePointCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPublicVantagePointsResponse: CustomStringConvertible {
    public var description: String { "ListPublicVantagePointsResponse()" }
}