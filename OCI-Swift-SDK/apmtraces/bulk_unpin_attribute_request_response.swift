import Foundation

// MARK: - BulkUnpinAttributeRequest

public struct BulkUnpinAttributeRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var bulkUnpinAttributeDetails: BulkUnpinAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, bulkUnpinAttributeDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                bulkUnpinAttributeDetails: BulkUnpinAttributeDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.bulkUnpinAttributeDetails = bulkUnpinAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUnpinAttributeRequest: CustomStringConvertible {
    public var description: String { "BulkUnpinAttributeRequest()" }
}

// MARK: - BulkUnpinAttributeResponse

public struct BulkUnpinAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkUnpinStatus: BulkUnpinStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkUnpinStatus
    }

    public init(
                opcRequestId: String? = nil,
                bulkUnpinStatus: BulkUnpinStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkUnpinStatus = bulkUnpinStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUnpinAttributeResponse: CustomStringConvertible {
    public var description: String { "BulkUnpinAttributeResponse()" }
}