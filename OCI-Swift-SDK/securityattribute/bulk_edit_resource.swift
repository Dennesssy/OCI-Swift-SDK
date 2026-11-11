import Foundation

// MARK: - BulkEditResource

public struct BulkEditResource: Codable, Sendable {

    public var id: String?
    public var resourceType: String?
    public var metadata: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case id, resourceType, metadata
    }

    public init(
                id: String? = nil,
                resourceType: String? = nil,
                metadata: [String: String]? = nil
    ) {
        self.id = id
        self.resourceType = resourceType
        self.metadata = metadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditResource: CustomStringConvertible {
    public var description: String { "BulkEditResource()" }
}