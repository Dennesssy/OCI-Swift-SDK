import Foundation

// MARK: - BulkActivationStatus

public struct BulkActivationStatus: Codable, Sendable {

    public var attributeStatuses: [AttributeResponse]
    public var bulkActivationMetadata: BulkActivationMetadata?

    private enum CodingKeys: String, CodingKey {
        case attributeStatuses, bulkActivationMetadata
    }

    public init(
                attributeStatuses: [AttributeResponse],
                bulkActivationMetadata: BulkActivationMetadata? = nil
    ) {
        self.attributeStatuses = attributeStatuses
        self.bulkActivationMetadata = bulkActivationMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActivationStatus: CustomStringConvertible {
    public var description: String { "BulkActivationStatus()" }
}