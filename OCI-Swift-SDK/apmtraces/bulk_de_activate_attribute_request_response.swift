import Foundation

// MARK: - BulkDeActivateAttributeRequest

public struct BulkDeActivateAttributeRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var bulkDeActivateAttributeDetails: BulkDeActivateAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, bulkDeActivateAttributeDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                bulkDeActivateAttributeDetails: BulkDeActivateAttributeDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.bulkDeActivateAttributeDetails = bulkDeActivateAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeActivateAttributeRequest: CustomStringConvertible {
    public var description: String { "BulkDeActivateAttributeRequest()" }
}

// MARK: - BulkDeActivateAttributeResponse

public struct BulkDeActivateAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkDeActivationStatus: BulkDeActivationStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkDeActivationStatus
    }

    public init(
                opcRequestId: String? = nil,
                bulkDeActivationStatus: BulkDeActivationStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkDeActivationStatus = bulkDeActivationStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeActivateAttributeResponse: CustomStringConvertible {
    public var description: String { "BulkDeActivateAttributeResponse()" }
}