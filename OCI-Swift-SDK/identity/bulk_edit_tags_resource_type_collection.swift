import Foundation

// MARK: - BulkEditTagsResourceTypeCollection

public struct BulkEditTagsResourceTypeCollection: Codable, Sendable {

    public var items: [BulkEditTagsResourceType]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BulkEditTagsResourceType]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditTagsResourceTypeCollection: CustomStringConvertible {
    public var description: String { "BulkEditTagsResourceTypeCollection()" }
}