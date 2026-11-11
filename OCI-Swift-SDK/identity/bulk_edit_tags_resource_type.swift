import Foundation

// MARK: - BulkEditTagsResourceType

public struct BulkEditTagsResourceType: Codable, Sendable {

    public var resourceType: String?
    public var metadataKeys: [String]?

    private enum CodingKeys: String, CodingKey {
        case resourceType, metadataKeys
    }

    public init(
                resourceType: String? = nil,
                metadataKeys: [String]? = nil
    ) {
        self.resourceType = resourceType
        self.metadataKeys = metadataKeys
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditTagsResourceType: CustomStringConvertible {
    public var description: String { "BulkEditTagsResourceType()" }
}