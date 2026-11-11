import Foundation

// MARK: - BulkDeActivationStatus

public struct BulkDeActivationStatus: Codable, Sendable {

    public var attributeStatuses: [AttributeResponse]
    public var bulkDeActivationMetadata: BulkDeActivationMetadata?

    private enum CodingKeys: String, CodingKey {
        case attributeStatuses, bulkDeActivationMetadata
    }

    public init(
                attributeStatuses: [AttributeResponse],
                bulkDeActivationMetadata: BulkDeActivationMetadata? = nil
    ) {
        self.attributeStatuses = attributeStatuses
        self.bulkDeActivationMetadata = bulkDeActivationMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeActivationStatus: CustomStringConvertible {
    public var description: String { "BulkDeActivationStatus()" }
}