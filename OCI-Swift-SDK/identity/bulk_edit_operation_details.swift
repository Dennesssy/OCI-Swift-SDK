import Foundation
import OCICommon

// MARK: - BulkEditOperationDetails

public struct BulkEditOperationDetails: Codable, Sendable {

    public var operationType: BulkEditOperationDetailsOperationTypeEnum
    public var definedTags: [String: [String: JSONValue]]

    private enum CodingKeys: String, CodingKey {
        case operationType, definedTags
    }

    public init(
                operationType: BulkEditOperationDetailsOperationTypeEnum,
                definedTags: [String: [String: JSONValue]]
    ) {
        self.operationType = operationType
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditOperationDetails: CustomStringConvertible {
    public var description: String { "BulkEditOperationDetails()" }
}