import Foundation

// MARK: - BulkUpdateAttributeRequest

public struct BulkUpdateAttributeRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var bulkUpdateAttributeDetails: BulkUpdateAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, bulkUpdateAttributeDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                bulkUpdateAttributeDetails: BulkUpdateAttributeDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.bulkUpdateAttributeDetails = bulkUpdateAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeRequest: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeRequest()" }
}

// MARK: - BulkUpdateAttributeResponse

public struct BulkUpdateAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkUpdateAttributeStatus: BulkUpdateAttributeStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkUpdateAttributeStatus
    }

    public init(
                opcRequestId: String? = nil,
                bulkUpdateAttributeStatus: BulkUpdateAttributeStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkUpdateAttributeStatus = bulkUpdateAttributeStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeResponse: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeResponse()" }
}