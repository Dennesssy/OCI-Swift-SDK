import Foundation

// MARK: - CreateOnPremiseVantagePointRequest

public struct CreateOnPremiseVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var createOnPremiseVantagePointDetails: CreateOnPremiseVantagePointDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, createOnPremiseVantagePointDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                createOnPremiseVantagePointDetails: CreateOnPremiseVantagePointDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.createOnPremiseVantagePointDetails = createOnPremiseVantagePointDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOnPremiseVantagePointRequest: CustomStringConvertible {
    public var description: String { "CreateOnPremiseVantagePointRequest()" }
}

// MARK: - CreateOnPremiseVantagePointResponse

public struct CreateOnPremiseVantagePointResponse: Codable, Sendable {
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

extension CreateOnPremiseVantagePointResponse: CustomStringConvertible {
    public var description: String { "CreateOnPremiseVantagePointResponse()" }
}