import Foundation

// MARK: - ResourceAnchorCollection

public struct ResourceAnchorCollection: Codable, Sendable {

    public var items: [ResourceAnchorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ResourceAnchorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnchorCollection: CustomStringConvertible {
    public var description: String { "ResourceAnchorCollection()" }
}