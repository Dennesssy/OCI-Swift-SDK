import Foundation

// MARK: - GetTraceRequest

public struct GetTraceRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var traceKey: String?
    public var opcRequestId: String?
    public var timeTraceStartedGreaterThanOrEqualTo: Date?
    public var timeTraceStartedLessThan: Date?
    public var traceNamespace: GetTraceTraceNamespaceEnum?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, traceKey, opcRequestId, timeTraceStartedGreaterThanOrEqualTo, timeTraceStartedLessThan, traceNamespace
    }

    public init(
                apmDomainId: String? = nil,
                traceKey: String? = nil,
                opcRequestId: String? = nil,
                timeTraceStartedGreaterThanOrEqualTo: Date? = nil,
                timeTraceStartedLessThan: Date? = nil,
                traceNamespace: GetTraceTraceNamespaceEnum? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.traceKey = traceKey
        self.opcRequestId = opcRequestId
        self.timeTraceStartedGreaterThanOrEqualTo = timeTraceStartedGreaterThanOrEqualTo
        self.timeTraceStartedLessThan = timeTraceStartedLessThan
        self.traceNamespace = traceNamespace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTraceRequest: CustomStringConvertible {
    public var description: String { "GetTraceRequest()" }
}

// MARK: - GetTraceResponse

public struct GetTraceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var trace: Trace?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, trace
    }

    public init(
                opcRequestId: String? = nil,
                trace: Trace? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.trace = trace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTraceResponse: CustomStringConvertible {
    public var description: String { "GetTraceResponse()" }
}