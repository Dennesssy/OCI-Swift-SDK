import Foundation

// MARK: - PublicVantagePointCollection

public struct PublicVantagePointCollection: Codable, Sendable {

    public var items: [PublicVantagePointSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PublicVantagePointSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PublicVantagePointCollection: CustomStringConvertible {
    public var description: String { "PublicVantagePointCollection()" }
}