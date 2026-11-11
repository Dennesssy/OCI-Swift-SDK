import Foundation

// MARK: - ListOnPremiseVantagePointsRequest

public struct ListOnPremiseVantagePointsRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOnPremiseVantagePointsSortOrderEnum?
    public var sortBy: ListOnPremiseVantagePointsSortByEnum?
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
                sortOrder: ListOnPremiseVantagePointsSortOrderEnum? = nil,
                sortBy: ListOnPremiseVantagePointsSortByEnum? = nil,
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

extension ListOnPremiseVantagePointsRequest: CustomStringConvertible {
    public var description: String { "ListOnPremiseVantagePointsRequest()" }
}

// MARK: - ListOnPremiseVantagePointsResponse

public struct ListOnPremiseVantagePointsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var onPremiseVantagePointCollection: OnPremiseVantagePointCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, onPremiseVantagePointCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                onPremiseVantagePointCollection: OnPremiseVantagePointCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.onPremiseVantagePointCollection = onPremiseVantagePointCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOnPremiseVantagePointsResponse: CustomStringConvertible {
    public var description: String { "ListOnPremiseVantagePointsResponse()" }
}