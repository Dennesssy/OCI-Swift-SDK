import Foundation

// MARK: - BulkUpdateNotesMetadata

public struct BulkUpdateNotesMetadata: Codable, Sendable {

    public var operationStatus: BulkUpdateNotesMetadataOperationStatusEnum
    public var operationType: BulkUpdateNotesMetadataOperationTypeEnum
    public var attributesNotesUpdated: Int?
    public var syntheticAttributesPinned: Int?

    private enum CodingKeys: String, CodingKey {
        case operationStatus, operationType, attributesNotesUpdated, syntheticAttributesPinned
    }

    public init(
                operationStatus: BulkUpdateNotesMetadataOperationStatusEnum,
                operationType: BulkUpdateNotesMetadataOperationTypeEnum,
                attributesNotesUpdated: Int? = nil,
                syntheticAttributesPinned: Int? = nil
    ) {
        self.operationStatus = operationStatus
        self.operationType = operationType
        self.attributesNotesUpdated = attributesNotesUpdated
        self.syntheticAttributesPinned = syntheticAttributesPinned
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateNotesMetadata: CustomStringConvertible {
    public var description: String { "BulkUpdateNotesMetadata()" }
}