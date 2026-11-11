import Foundation

// MARK: - BulkActionResourceType

public struct BulkActionResourceType: Codable, Sendable {

    public var name: String?
    public var metadataKeys: [String]?

    private enum CodingKeys: String, CodingKey {
        case name, metadataKeys
    }

    public init(
                name: String? = nil,
                metadataKeys: [String]? = nil
    ) {
        self.name = name
        self.metadataKeys = metadataKeys
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActionResourceType: CustomStringConvertible {
    public var description: String { "BulkActionResourceType()" }
}