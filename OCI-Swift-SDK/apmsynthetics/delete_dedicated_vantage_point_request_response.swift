import Foundation

// MARK: - DeleteDedicatedVantagePointRequest

public struct DeleteDedicatedVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var dedicatedVantagePointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, dedicatedVantagePointId, ifMatch, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                dedicatedVantagePointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.dedicatedVantagePointId = dedicatedVantagePointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDedicatedVantagePointRequest: CustomStringConvertible {
    public var description: String { "DeleteDedicatedVantagePointRequest()" }
}

// MARK: - DeleteDedicatedVantagePointResponse

public struct DeleteDedicatedVantagePointResponse: Codable, Sendable {
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

extension DeleteDedicatedVantagePointResponse: CustomStringConvertible {
    public var description: String { "DeleteDedicatedVantagePointResponse()" }
}