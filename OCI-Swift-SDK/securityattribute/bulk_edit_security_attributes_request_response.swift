import Foundation

// MARK: - BulkEditSecurityAttributesRequest

public struct BulkEditSecurityAttributesRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkEditSecurityAttributeDetails: BulkEditSecurityAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkEditSecurityAttributeDetails
    }

    public init(
                opcRequestId: String? = nil,
                bulkEditSecurityAttributeDetails: BulkEditSecurityAttributeDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkEditSecurityAttributeDetails = bulkEditSecurityAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditSecurityAttributesRequest: CustomStringConvertible {
    public var description: String { "BulkEditSecurityAttributesRequest()" }
}

// MARK: - BulkEditSecurityAttributesResponse

public struct BulkEditSecurityAttributesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditSecurityAttributesResponse: CustomStringConvertible {
    public var description: String { "BulkEditSecurityAttributesResponse()" }
}