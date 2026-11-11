import Foundation

// MARK: - BulkUpdateAttributeStatus

public struct BulkUpdateAttributeStatus: Codable, Sendable {

    public var attributeStatuses: [AttributeUpdateResponse]
    public var bulkUpdateAttributeMetadata: BulkUpdateAttributeMetadata?

    private enum CodingKeys: String, CodingKey {
        case attributeStatuses, bulkUpdateAttributeMetadata
    }

    public init(
                attributeStatuses: [AttributeUpdateResponse],
                bulkUpdateAttributeMetadata: BulkUpdateAttributeMetadata? = nil
    ) {
        self.attributeStatuses = attributeStatuses
        self.bulkUpdateAttributeMetadata = bulkUpdateAttributeMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeStatus: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeStatus()" }
}