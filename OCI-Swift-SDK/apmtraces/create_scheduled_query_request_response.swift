import Foundation

// MARK: - CreateScheduledQueryRequest

public struct CreateScheduledQueryRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var opcDryRun: String?
    public var createScheduledQueryDetails: CreateScheduledQueryDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, opcDryRun, createScheduledQueryDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                opcDryRun: String? = nil,
                createScheduledQueryDetails: CreateScheduledQueryDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.opcDryRun = opcDryRun
        self.createScheduledQueryDetails = createScheduledQueryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateScheduledQueryRequest: CustomStringConvertible {
    public var description: String { "CreateScheduledQueryRequest()" }
}

// MARK: - CreateScheduledQueryResponse

public struct CreateScheduledQueryResponse: Codable, Sendable {
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

extension CreateScheduledQueryResponse: CustomStringConvertible {
    public var description: String { "CreateScheduledQueryResponse()" }
}