import Foundation

// MARK: - BulkDeleteSecurityAttributesDetails

public struct BulkDeleteSecurityAttributesDetails: Codable, Sendable {

    public var securityAttributeIds: [String]

    private enum CodingKeys: String, CodingKey {
        case securityAttributeIds
    }

    public init(
                securityAttributeIds: [String]
    ) {
        self.securityAttributeIds = securityAttributeIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteSecurityAttributesDetails: CustomStringConvertible {
    public var description: String { "BulkDeleteSecurityAttributesDetails()" }
}