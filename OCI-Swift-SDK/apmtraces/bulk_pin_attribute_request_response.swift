import Foundation

// MARK: - BulkPinAttributeRequest

public struct BulkPinAttributeRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var bulkPinAttributeDetails: BulkPinAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, bulkPinAttributeDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                bulkPinAttributeDetails: BulkPinAttributeDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.bulkPinAttributeDetails = bulkPinAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkPinAttributeRequest: CustomStringConvertible {
    public var description: String { "BulkPinAttributeRequest()" }
}

// MARK: - BulkPinAttributeResponse

public struct BulkPinAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkPinStatus: BulkPinStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkPinStatus
    }

    public init(
                opcRequestId: String? = nil,
                bulkPinStatus: BulkPinStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkPinStatus = bulkPinStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkPinAttributeResponse: CustomStringConvertible {
    public var description: String { "BulkPinAttributeResponse()" }
}