import Foundation

// MARK: - DeleteOnPremiseVantagePointRequest

public struct DeleteOnPremiseVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, ifMatch, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOnPremiseVantagePointRequest: CustomStringConvertible {
    public var description: String { "DeleteOnPremiseVantagePointRequest()" }
}

// MARK: - DeleteOnPremiseVantagePointResponse

public struct DeleteOnPremiseVantagePointResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOnPremiseVantagePointResponse: CustomStringConvertible {
    public var description: String { "DeleteOnPremiseVantagePointResponse()" }
}