import Foundation

// MARK: - BulkActivateAttributeRequest

public struct BulkActivateAttributeRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var bulkActivateAttributeDetails: BulkActivateAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, bulkActivateAttributeDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                bulkActivateAttributeDetails: BulkActivateAttributeDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.bulkActivateAttributeDetails = bulkActivateAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActivateAttributeRequest: CustomStringConvertible {
    public var description: String { "BulkActivateAttributeRequest()" }
}

// MARK: - BulkActivateAttributeResponse

public struct BulkActivateAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkActivationStatus: BulkActivationStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkActivationStatus
    }

    public init(
                opcRequestId: String? = nil,
                bulkActivationStatus: BulkActivationStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkActivationStatus = bulkActivationStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActivateAttributeResponse: CustomStringConvertible {
    public var description: String { "BulkActivateAttributeResponse()" }
}