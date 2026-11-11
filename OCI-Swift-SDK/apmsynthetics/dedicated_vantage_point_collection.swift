import Foundation

// MARK: - DedicatedVantagePointCollection

public struct DedicatedVantagePointCollection: Codable, Sendable {

    public var items: [DedicatedVantagePointSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DedicatedVantagePointSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DedicatedVantagePointCollection: CustomStringConvertible {
    public var description: String { "DedicatedVantagePointCollection()" }
}