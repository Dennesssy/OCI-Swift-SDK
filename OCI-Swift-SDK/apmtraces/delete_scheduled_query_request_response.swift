import Foundation

// MARK: - DeleteScheduledQueryRequest

public struct DeleteScheduledQueryRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var scheduledQueryId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, scheduledQueryId, opcRequestId, ifMatch
    }

    public init(
                apmDomainId: String? = nil,
                scheduledQueryId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.scheduledQueryId = scheduledQueryId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteScheduledQueryRequest: CustomStringConvertible {
    public var description: String { "DeleteScheduledQueryRequest()" }
}

// MARK: - DeleteScheduledQueryResponse

public struct DeleteScheduledQueryResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteScheduledQueryResponse: CustomStringConvertible {
    public var description: String { "DeleteScheduledQueryResponse()" }
}