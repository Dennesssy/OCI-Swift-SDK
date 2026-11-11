import Foundation

// MARK: - NetworkAnchorCollection

public struct NetworkAnchorCollection: Codable, Sendable {

    public var items: [NetworkAnchorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [NetworkAnchorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkAnchorCollection: CustomStringConvertible {
    public var description: String { "NetworkAnchorCollection()" }
}