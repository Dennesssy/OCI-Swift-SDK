import Foundation

// MARK: - UpdateScheduledQueryRequest

public struct UpdateScheduledQueryRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var scheduledQueryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var opcDryRun: String?
    public var updateScheduledQueryDetails: UpdateScheduledQueryDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, scheduledQueryId, ifMatch, opcRequestId, opcDryRun, updateScheduledQueryDetails
    }

    public init(
                apmDomainId: String? = nil,
                scheduledQueryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                opcDryRun: String? = nil,
                updateScheduledQueryDetails: UpdateScheduledQueryDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.scheduledQueryId = scheduledQueryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.opcDryRun = opcDryRun
        self.updateScheduledQueryDetails = updateScheduledQueryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateScheduledQueryRequest: CustomStringConvertible {
    public var description: String { "UpdateScheduledQueryRequest()" }
}

// MARK: - UpdateScheduledQueryResponse

public struct UpdateScheduledQueryResponse: Codable, Sendable {
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

extension UpdateScheduledQueryResponse: CustomStringConvertible {
    public var description: String { "UpdateScheduledQueryResponse()" }
}