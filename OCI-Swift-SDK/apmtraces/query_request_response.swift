import Foundation

// MARK: - QueryRequest

public struct QueryRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var timeSpanStartedGreaterThanOrEqualTo: Date?
    public var timeSpanStartedLessThan: Date?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var queryDetails: QueryDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, timeSpanStartedGreaterThanOrEqualTo, timeSpanStartedLessThan, opcRequestId, limit, page, queryDetails
    }

    public init(
                apmDomainId: String? = nil,
                timeSpanStartedGreaterThanOrEqualTo: Date? = nil,
                timeSpanStartedLessThan: Date? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                queryDetails: QueryDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.timeSpanStartedGreaterThanOrEqualTo = timeSpanStartedGreaterThanOrEqualTo
        self.timeSpanStartedLessThan = timeSpanStartedLessThan
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.queryDetails = queryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryRequest: CustomStringConvertible {
    public var description: String { "QueryRequest()" }
}

// MARK: - QueryResponse

public struct QueryResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcTotalItems: Int?
    public var opcNextPage: String?
    public var queryResultResponse: QueryResultResponse?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcTotalItems, opcNextPage, queryResultResponse
    }

    public init(
                opcRequestId: String? = nil,
                opcTotalItems: Int? = nil,
                opcNextPage: String? = nil,
                queryResultResponse: QueryResultResponse? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcTotalItems = opcTotalItems
        self.opcNextPage = opcNextPage
        self.queryResultResponse = queryResultResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResponse: CustomStringConvertible {
    public var description: String { "QueryResponse()" }
}