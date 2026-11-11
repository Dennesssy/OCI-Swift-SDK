import Foundation

// MARK: - CreateDedicatedVantagePointRequest

public struct CreateDedicatedVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var createDedicatedVantagePointDetails: CreateDedicatedVantagePointDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, createDedicatedVantagePointDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                createDedicatedVantagePointDetails: CreateDedicatedVantagePointDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.createDedicatedVantagePointDetails = createDedicatedVantagePointDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDedicatedVantagePointRequest: CustomStringConvertible {
    public var description: String { "CreateDedicatedVantagePointRequest()" }
}

// MARK: - CreateDedicatedVantagePointResponse

public struct CreateDedicatedVantagePointResponse: Codable, Sendable {
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

extension CreateDedicatedVantagePointResponse: CustomStringConvertible {
    public var description: String { "CreateDedicatedVantagePointResponse()" }
}