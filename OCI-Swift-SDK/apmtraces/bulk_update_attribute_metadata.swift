import Foundation

// MARK: - BulkUpdateAttributeMetadata

public struct BulkUpdateAttributeMetadata: Codable, Sendable {

    public var operationStatus: BulkUpdateAttributeMetadataOperationStatusEnum
    public var operationType: BulkUpdateAttributeMetadataOperationTypeEnum
    public var attributesUpdated: Int?
    public var syntheticAttributesUpdated: Int?

    private enum CodingKeys: String, CodingKey {
        case operationStatus, operationType, attributesUpdated, syntheticAttributesUpdated
    }

    public init(
                operationStatus: BulkUpdateAttributeMetadataOperationStatusEnum,
                operationType: BulkUpdateAttributeMetadataOperationTypeEnum,
                attributesUpdated: Int? = nil,
                syntheticAttributesUpdated: Int? = nil
    ) {
        self.operationStatus = operationStatus
        self.operationType = operationType
        self.attributesUpdated = attributesUpdated
        self.syntheticAttributesUpdated = syntheticAttributesUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeMetadata: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeMetadata()" }
}