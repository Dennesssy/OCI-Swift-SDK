import Foundation

// MARK: - OnPremiseVantagePointCollection

public struct OnPremiseVantagePointCollection: Codable, Sendable {

    public var items: [OnPremiseVantagePointSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OnPremiseVantagePointSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OnPremiseVantagePointCollection: CustomStringConvertible {
    public var description: String { "OnPremiseVantagePointCollection()" }
}