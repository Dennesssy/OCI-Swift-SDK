import Foundation

// MARK: - GetLogRequest

public struct GetLogRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var logKey: String?
    public var timeLogStartedGreaterThanOrEqualTo: Date?
    public var timeLogEndedLessThan: Date?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, logKey, timeLogStartedGreaterThanOrEqualTo, timeLogEndedLessThan, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                logKey: String? = nil,
                timeLogStartedGreaterThanOrEqualTo: Date? = nil,
                timeLogEndedLessThan: Date? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.logKey = logKey
        self.timeLogStartedGreaterThanOrEqualTo = timeLogStartedGreaterThanOrEqualTo
        self.timeLogEndedLessThan = timeLogEndedLessThan
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetLogRequest: CustomStringConvertible {
    public var description: String { "GetLogRequest()" }
}

// MARK: - GetLogResponse

public struct GetLogResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var log: Log?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, log
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                log: Log? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.log = log
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetLogResponse: CustomStringConvertible {
    public var description: String { "GetLogResponse()" }
}