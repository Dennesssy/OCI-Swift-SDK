import Foundation

// MARK: - BulkPinStatus

public struct BulkPinStatus: Codable, Sendable {

    public var attributeStatuses: [AttributePinResponse]
    public var bulkPinMetadata: BulkPinMetadata?

    private enum CodingKeys: String, CodingKey {
        case attributeStatuses, bulkPinMetadata
    }

    public init(
                attributeStatuses: [AttributePinResponse],
                bulkPinMetadata: BulkPinMetadata? = nil
    ) {
        self.attributeStatuses = attributeStatuses
        self.bulkPinMetadata = bulkPinMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkPinStatus: CustomStringConvertible {
    public var description: String { "BulkPinStatus()" }
}