import Foundation

// MARK: - ListDedicatedVantagePointsRequest

public struct ListDedicatedVantagePointsRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDedicatedVantagePointsSortOrderEnum?
    public var sortBy: ListDedicatedVantagePointsSortByEnum?
    public var displayName: String?
    public var name: String?
    public var status: ListDedicatedVantagePointsStatusEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, limit, page, sortOrder, sortBy, displayName, name, status, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDedicatedVantagePointsSortOrderEnum? = nil,
                sortBy: ListDedicatedVantagePointsSortByEnum? = nil,
                displayName: String? = nil,
                name: String? = nil,
                status: ListDedicatedVantagePointsStatusEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.displayName = displayName
        self.name = name
        self.status = status
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDedicatedVantagePointsRequest: CustomStringConvertible {
    public var description: String { "ListDedicatedVantagePointsRequest()" }
}

// MARK: - ListDedicatedVantagePointsResponse

public struct ListDedicatedVantagePointsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var dedicatedVantagePointCollection: DedicatedVantagePointCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, dedicatedVantagePointCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                dedicatedVantagePointCollection: DedicatedVantagePointCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.dedicatedVantagePointCollection = dedicatedVantagePointCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDedicatedVantagePointsResponse: CustomStringConvertible {
    public var description: String { "ListDedicatedVantagePointsResponse()" }
}