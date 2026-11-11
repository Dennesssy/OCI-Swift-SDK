import Foundation

// MARK: - CostAnomalyEventAnalyticCollection

public struct CostAnomalyEventAnalyticCollection: Codable, Sendable {

    public var items: [CostAnomalyEventAnalyticSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CostAnomalyEventAnalyticSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAnomalyEventAnalyticCollection: CustomStringConvertible {
    public var description: String { "CostAnomalyEventAnalyticCollection()" }
}