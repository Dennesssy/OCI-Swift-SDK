import Foundation

// MARK: - GetOnPremiseVantagePointRequest

public struct GetOnPremiseVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOnPremiseVantagePointRequest: CustomStringConvertible {
    public var description: String { "GetOnPremiseVantagePointRequest()" }
}

// MARK: - GetOnPremiseVantagePointResponse

public struct GetOnPremiseVantagePointResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var onPremiseVantagePoint: OnPremiseVantagePoint?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, onPremiseVantagePoint
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                onPremiseVantagePoint: OnPremiseVantagePoint? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.onPremiseVantagePoint = onPremiseVantagePoint
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOnPremiseVantagePointResponse: CustomStringConvertible {
    public var description: String { "GetOnPremiseVantagePointResponse()" }
}