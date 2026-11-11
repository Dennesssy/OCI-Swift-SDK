import Foundation

// MARK: - UpdateDedicatedVantagePointRequest

public struct UpdateDedicatedVantagePointRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var dedicatedVantagePointId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDedicatedVantagePointDetails: UpdateDedicatedVantagePointDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, dedicatedVantagePointId, ifMatch, opcRequestId, updateDedicatedVantagePointDetails
    }

    public init(
                apmDomainId: String? = nil,
                dedicatedVantagePointId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDedicatedVantagePointDetails: UpdateDedicatedVantagePointDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.dedicatedVantagePointId = dedicatedVantagePointId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDedicatedVantagePointDetails = updateDedicatedVantagePointDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDedicatedVantagePointRequest: CustomStringConvertible {
    public var description: String { "UpdateDedicatedVantagePointRequest()" }
}

// MARK: - UpdateDedicatedVantagePointResponse

public struct UpdateDedicatedVantagePointResponse: Codable, Sendable {
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

extension UpdateDedicatedVantagePointResponse: CustomStringConvertible {
    public var description: String { "UpdateDedicatedVantagePointResponse()" }
}