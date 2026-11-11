import Foundation
import OCICommon

// MARK: - BulkEditSecurityAttributeOperationDetails

public struct BulkEditSecurityAttributeOperationDetails: Codable, Sendable {

    public var operationType: BulkEditSecurityAttributeOperationDetailsOperationTypeEnum
    public var securityAttributes: [String: [String: JSONValue]]

    private enum CodingKeys: String, CodingKey {
        case operationType, securityAttributes
    }

    public init(
                operationType: BulkEditSecurityAttributeOperationDetailsOperationTypeEnum,
                securityAttributes: [String: [String: JSONValue]]
    ) {
        self.operationType = operationType
        self.securityAttributes = securityAttributes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditSecurityAttributeOperationDetails: CustomStringConvertible {
    public var description: String { "BulkEditSecurityAttributeOperationDetails()" }
}