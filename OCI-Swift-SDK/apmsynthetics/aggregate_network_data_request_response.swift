import Foundation

// MARK: - AggregateNetworkDataRequest

public struct AggregateNetworkDataRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var monitorId: String?
    public var opcRequestId: String?
    public var aggregateNetworkDataDetails: AggregateNetworkDataDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, monitorId, opcRequestId, aggregateNetworkDataDetails
    }

    public init(
                apmDomainId: String? = nil,
                monitorId: String? = nil,
                opcRequestId: String? = nil,
                aggregateNetworkDataDetails: AggregateNetworkDataDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.monitorId = monitorId
        self.opcRequestId = opcRequestId
        self.aggregateNetworkDataDetails = aggregateNetworkDataDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregateNetworkDataRequest: CustomStringConvertible {
    public var description: String { "AggregateNetworkDataRequest()" }
}

// MARK: - AggregateNetworkDataResponse

public struct AggregateNetworkDataResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var aggregatedNetworkDataResult: AggregatedNetworkDataResult?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, aggregatedNetworkDataResult
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                aggregatedNetworkDataResult: AggregatedNetworkDataResult? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.aggregatedNetworkDataResult = aggregatedNetworkDataResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregateNetworkDataResponse: CustomStringConvertible {
    public var description: String { "AggregateNetworkDataResponse()" }
}