import Foundation

// MARK: - BulkUpdateNotesStatus

public struct BulkUpdateNotesStatus: Codable, Sendable {

    public var attributeStatuses: [AttributeUpdateNotesResponse]
    public var bulkUpdateNotesMetadata: BulkUpdateNotesMetadata?

    private enum CodingKeys: String, CodingKey {
        case attributeStatuses, bulkUpdateNotesMetadata
    }

    public init(
                attributeStatuses: [AttributeUpdateNotesResponse],
                bulkUpdateNotesMetadata: BulkUpdateNotesMetadata? = nil
    ) {
        self.attributeStatuses = attributeStatuses
        self.bulkUpdateNotesMetadata = bulkUpdateNotesMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateNotesStatus: CustomStringConvertible {
    public var description: String { "BulkUpdateNotesStatus()" }
}