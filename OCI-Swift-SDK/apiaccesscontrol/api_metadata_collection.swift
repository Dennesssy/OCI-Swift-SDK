import Foundation

// MARK: - ApiMetadataCollection

public struct ApiMetadataCollection: Codable, Sendable {

    public var items: [ApiMetadataSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ApiMetadataSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiMetadataCollection: CustomStringConvertible {
    public var description: String { "ApiMetadataCollection()" }
}