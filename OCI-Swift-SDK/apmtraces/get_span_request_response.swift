import Foundation

// MARK: - GetSpanRequest

public struct GetSpanRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var spanKey: String?
    public var traceKey: String?
    public var opcRequestId: String?
    public var timeSpanStartedGreaterThanOrEqualTo: Date?
    public var timeSpanStartedLessThan: Date?
    public var spanNamespace: GetSpanSpanNamespaceEnum?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, spanKey, traceKey, opcRequestId, timeSpanStartedGreaterThanOrEqualTo, timeSpanStartedLessThan, spanNamespace
    }

    public init(
                apmDomainId: String? = nil,
                spanKey: String? = nil,
                traceKey: String? = nil,
                opcRequestId: String? = nil,
                timeSpanStartedGreaterThanOrEqualTo: Date? = nil,
                timeSpanStartedLessThan: Date? = nil,
                spanNamespace: GetSpanSpanNamespaceEnum? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.spanKey = spanKey
        self.traceKey = traceKey
        self.opcRequestId = opcRequestId
        self.timeSpanStartedGreaterThanOrEqualTo = timeSpanStartedGreaterThanOrEqualTo
        self.timeSpanStartedLessThan = timeSpanStartedLessThan
        self.spanNamespace = spanNamespace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSpanRequest: CustomStringConvertible {
    public var description: String { "GetSpanRequest()" }
}

// MARK: - GetSpanResponse

public struct GetSpanResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var span: Span?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, span
    }

    public init(
                opcRequestId: String? = nil,
                span: Span? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.span = span
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSpanResponse: CustomStringConvertible {
    public var description: String { "GetSpanResponse()" }
}