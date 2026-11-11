import Foundation

// MARK: - GetTraceSnapshotRequest

public struct GetTraceSnapshotRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var traceKey: String?
    public var opcRequestId: String?
    public var isSummarized: Bool?
    public var threadId: String?
    public var snapshotTime: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, traceKey, opcRequestId, isSummarized, threadId, snapshotTime
    }

    public init(
                apmDomainId: String? = nil,
                traceKey: String? = nil,
                opcRequestId: String? = nil,
                isSummarized: Bool? = nil,
                threadId: String? = nil,
                snapshotTime: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.traceKey = traceKey
        self.opcRequestId = opcRequestId
        self.isSummarized = isSummarized
        self.threadId = threadId
        self.snapshotTime = snapshotTime
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTraceSnapshotRequest: CustomStringConvertible {
    public var description: String { "GetTraceSnapshotRequest()" }
}

// MARK: - GetTraceSnapshotResponse

public struct GetTraceSnapshotResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var traceSnapshot: TraceSnapshot?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, traceSnapshot
    }

    public init(
                opcRequestId: String? = nil,
                traceSnapshot: TraceSnapshot? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.traceSnapshot = traceSnapshot
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTraceSnapshotResponse: CustomStringConvertible {
    public var description: String { "GetTraceSnapshotResponse()" }
}