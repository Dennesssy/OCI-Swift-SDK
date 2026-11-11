import Foundation

// MARK: - BulkUnpinStatus

public struct BulkUnpinStatus: Codable, Sendable {

    public var attributeStatuses: [AttributeUnpinResponse]
    public var bulkUnpinMetadata: BulkUnpinMetadata?

    private enum CodingKeys: String, CodingKey {
        case attributeStatuses, bulkUnpinMetadata
    }

    public init(
                attributeStatuses: [AttributeUnpinResponse],
                bulkUnpinMetadata: BulkUnpinMetadata? = nil
    ) {
        self.attributeStatuses = attributeStatuses
        self.bulkUnpinMetadata = bulkUnpinMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUnpinStatus: CustomStringConvertible {
    public var description: String { "BulkUnpinStatus()" }
}