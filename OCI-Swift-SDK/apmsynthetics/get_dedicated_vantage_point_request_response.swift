import Foundation

// MARK: - GetDedicatedVantagePointRequest

public struct GetDedicatedVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var dedicatedVantagePointId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, dedicatedVantagePointId, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                dedicatedVantagePointId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.dedicatedVantagePointId = dedicatedVantagePointId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDedicatedVantagePointRequest: CustomStringConvertible {
    public var description: String { "GetDedicatedVantagePointRequest()" }
}

// MARK: - GetDedicatedVantagePointResponse

public struct GetDedicatedVantagePointResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var dedicatedVantagePoint: DedicatedVantagePoint?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, dedicatedVantagePoint
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                dedicatedVantagePoint: DedicatedVantagePoint? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.dedicatedVantagePoint = dedicatedVantagePoint
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDedicatedVantagePointResponse: CustomStringConvertible {
    public var description: String { "GetDedicatedVantagePointResponse()" }
}