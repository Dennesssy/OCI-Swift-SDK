import Foundation

// MARK: - ApiMetadataByEntityTypeCollection

public struct ApiMetadataByEntityTypeCollection: Codable, Sendable {

    public var items: [ApiMetadataByEntityTypeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ApiMetadataByEntityTypeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiMetadataByEntityTypeCollection: CustomStringConvertible {
    public var description: String { "ApiMetadataByEntityTypeCollection()" }
}