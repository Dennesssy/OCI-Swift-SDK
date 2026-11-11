import Foundation

// MARK: - ListQuickPicksRequest

public struct ListQuickPicksRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, limit, page
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListQuickPicksRequest: CustomStringConvertible {
    public var description: String { "ListQuickPicksRequest()" }
}

// MARK: - ListQuickPicksResponse

public struct ListQuickPicksResponse: Codable, Sendable {
    public var items: [QuickPickSummary]?
    public var opcRequestId: String?
    public var opcTotalItems: Int?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcTotalItems, opcNextPage
    }

    public init(
                items: [QuickPickSummary]? = nil,
                opcRequestId: String? = nil,
                opcTotalItems: Int? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcTotalItems = opcTotalItems
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListQuickPicksResponse: CustomStringConvertible {
    public var description: String { "ListQuickPicksResponse()" }
}