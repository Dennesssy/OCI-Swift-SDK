import Foundation

// MARK: - GetAggregatedSnapshotRequest

public struct GetAggregatedSnapshotRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var traceKey: String?
    public var opcRequestId: String?
    public var serviceName: String?
    public var serverName: String?
    public var spanKey: String?
    public var spanName: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, traceKey, opcRequestId, serviceName, serverName, spanKey, spanName
    }

    public init(
                apmDomainId: String? = nil,
                traceKey: String? = nil,
                opcRequestId: String? = nil,
                serviceName: String? = nil,
                serverName: String? = nil,
                spanKey: String? = nil,
                spanName: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.traceKey = traceKey
        self.opcRequestId = opcRequestId
        self.serviceName = serviceName
        self.serverName = serverName
        self.spanKey = spanKey
        self.spanName = spanName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAggregatedSnapshotRequest: CustomStringConvertible {
    public var description: String { "GetAggregatedSnapshotRequest()" }
}

// MARK: - GetAggregatedSnapshotResponse

public struct GetAggregatedSnapshotResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var aggregatedSnapshot: AggregatedSnapshot?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, aggregatedSnapshot
    }

    public init(
                opcRequestId: String? = nil,
                aggregatedSnapshot: AggregatedSnapshot? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.aggregatedSnapshot = aggregatedSnapshot
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAggregatedSnapshotResponse: CustomStringConvertible {
    public var description: String { "GetAggregatedSnapshotResponse()" }
}