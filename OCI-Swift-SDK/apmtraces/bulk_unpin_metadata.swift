import Foundation

// MARK: - BulkUnpinMetadata

public struct BulkUnpinMetadata: Codable, Sendable {

    public var operationStatus: BulkUnpinMetadataOperationStatusEnum
    public var operationType: BulkUnpinMetadataOperationTypeEnum
    public var attributesUnpinned: Int?
    public var syntheticAttributesUnpinned: Int?

    private enum CodingKeys: String, CodingKey {
        case operationStatus, operationType, attributesUnpinned, syntheticAttributesUnpinned
    }

    public init(
                operationStatus: BulkUnpinMetadataOperationStatusEnum,
                operationType: BulkUnpinMetadataOperationTypeEnum,
                attributesUnpinned: Int? = nil,
                syntheticAttributesUnpinned: Int? = nil
    ) {
        self.operationStatus = operationStatus
        self.operationType = operationType
        self.attributesUnpinned = attributesUnpinned
        self.syntheticAttributesUnpinned = syntheticAttributesUnpinned
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUnpinMetadata: CustomStringConvertible {
    public var description: String { "BulkUnpinMetadata()" }
}