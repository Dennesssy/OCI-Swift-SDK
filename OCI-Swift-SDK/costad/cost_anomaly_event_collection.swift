import Foundation

// MARK: - CostAnomalyEventCollection

public struct CostAnomalyEventCollection: Codable, Sendable {

    public var items: [CostAnomalyEventSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CostAnomalyEventSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAnomalyEventCollection: CustomStringConvertible {
    public var description: String { "CostAnomalyEventCollection()" }
}