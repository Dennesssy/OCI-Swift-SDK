import Foundation

// MARK: - BulkActionResourceTypeCollection

public struct BulkActionResourceTypeCollection: Codable, Sendable {

    public var items: [BulkActionResourceType]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BulkActionResourceType]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActionResourceTypeCollection: CustomStringConvertible {
    public var description: String { "BulkActionResourceTypeCollection()" }
}