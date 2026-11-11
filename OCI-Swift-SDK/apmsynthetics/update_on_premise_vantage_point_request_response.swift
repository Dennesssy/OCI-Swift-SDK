import Foundation

// MARK: - UpdateOnPremiseVantagePointRequest

public struct UpdateOnPremiseVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOnPremiseVantagePointDetails: UpdateOnPremiseVantagePointDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, ifMatch, opcRequestId, updateOnPremiseVantagePointDetails
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOnPremiseVantagePointDetails: UpdateOnPremiseVantagePointDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOnPremiseVantagePointDetails = updateOnPremiseVantagePointDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOnPremiseVantagePointRequest: CustomStringConvertible {
    public var description: String { "UpdateOnPremiseVantagePointRequest()" }
}

// MARK: - UpdateOnPremiseVantagePointResponse

public struct UpdateOnPremiseVantagePointResponse: Codable, Sendable {
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

extension UpdateOnPremiseVantagePointResponse: CustomStringConvertible {
    public var description: String { "UpdateOnPremiseVantagePointResponse()" }
}