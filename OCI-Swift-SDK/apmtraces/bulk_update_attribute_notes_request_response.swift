import Foundation

// MARK: - BulkUpdateAttributeNotesRequest

public struct BulkUpdateAttributeNotesRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var bulkUpdateAttributeNotesDetails: BulkUpdateAttributeNotesDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, bulkUpdateAttributeNotesDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                bulkUpdateAttributeNotesDetails: BulkUpdateAttributeNotesDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.bulkUpdateAttributeNotesDetails = bulkUpdateAttributeNotesDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeNotesRequest: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeNotesRequest()" }
}

// MARK: - BulkUpdateAttributeNotesResponse

public struct BulkUpdateAttributeNotesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkUpdateNotesStatus: BulkUpdateNotesStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkUpdateNotesStatus
    }

    public init(
                opcRequestId: String? = nil,
                bulkUpdateNotesStatus: BulkUpdateNotesStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkUpdateNotesStatus = bulkUpdateNotesStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeNotesResponse: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeNotesResponse()" }
}