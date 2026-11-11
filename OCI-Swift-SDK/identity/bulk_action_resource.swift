import Foundation

// MARK: - BulkActionResource

public struct BulkActionResource: Codable, Sendable {

    public var identifier: String?
    public var entityType: String?
    public var metadata: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case identifier, entityType, metadata
    }

    public init(
                identifier: String? = nil,
                entityType: String? = nil,
                metadata: [String: String]? = nil
    ) {
        self.identifier = identifier
        self.entityType = entityType
        self.metadata = metadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActionResource: CustomStringConvertible {
    public var description: String { "BulkActionResource()" }
}