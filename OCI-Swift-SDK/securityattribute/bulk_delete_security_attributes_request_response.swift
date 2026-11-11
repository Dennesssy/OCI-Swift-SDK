import Foundation

// MARK: - BulkDeleteSecurityAttributesRequest

public struct BulkDeleteSecurityAttributesRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkDeleteSecurityAttributesDetails: BulkDeleteSecurityAttributesDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkDeleteSecurityAttributesDetails
    }

    public init(
                opcRequestId: String? = nil,
                bulkDeleteSecurityAttributesDetails: BulkDeleteSecurityAttributesDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkDeleteSecurityAttributesDetails = bulkDeleteSecurityAttributesDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteSecurityAttributesRequest: CustomStringConvertible {
    public var description: String { "BulkDeleteSecurityAttributesRequest()" }
}

// MARK: - BulkDeleteSecurityAttributesResponse

public struct BulkDeleteSecurityAttributesResponse: Codable, Sendable {
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

extension BulkDeleteSecurityAttributesResponse: CustomStringConvertible {
    public var description: String { "BulkDeleteSecurityAttributesResponse()" }
}