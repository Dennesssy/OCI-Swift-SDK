import Foundation

// MARK: - GetScheduledQueryRequest

public struct GetScheduledQueryRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var scheduledQueryId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, scheduledQueryId, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                scheduledQueryId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.scheduledQueryId = scheduledQueryId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetScheduledQueryRequest: CustomStringConvertible {
    public var description: String { "GetScheduledQueryRequest()" }
}

// MARK: - GetScheduledQueryResponse

public struct GetScheduledQueryResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var scheduledQuery: ScheduledQuery?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, scheduledQuery
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                scheduledQuery: ScheduledQuery? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.scheduledQuery = scheduledQuery
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetScheduledQueryResponse: CustomStringConvertible {
    public var description: String { "GetScheduledQueryResponse()" }
}