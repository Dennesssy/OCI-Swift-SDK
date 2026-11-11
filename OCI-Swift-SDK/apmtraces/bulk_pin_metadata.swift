import Foundation

// MARK: - BulkPinMetadata

public struct BulkPinMetadata: Codable, Sendable {

    public var operationStatus: BulkPinMetadataOperationStatusEnum
    public var operationType: BulkPinMetadataOperationTypeEnum
    public var attributesPinned: Int?
    public var syntheticAttributesPinned: Int?

    private enum CodingKeys: String, CodingKey {
        case operationStatus, operationType, attributesPinned, syntheticAttributesPinned
    }

    public init(
                operationStatus: BulkPinMetadataOperationStatusEnum,
                operationType: BulkPinMetadataOperationTypeEnum,
                attributesPinned: Int? = nil,
                syntheticAttributesPinned: Int? = nil
    ) {
        self.operationStatus = operationStatus
        self.operationType = operationType
        self.attributesPinned = attributesPinned
        self.syntheticAttributesPinned = syntheticAttributesPinned
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkPinMetadata: CustomStringConvertible {
    public var description: String { "BulkPinMetadata()" }
}