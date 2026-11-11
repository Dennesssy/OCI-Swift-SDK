import Foundation

// MARK: - CostAnomalyMonitorCollection

public struct CostAnomalyMonitorCollection: Codable, Sendable {

    public var items: [CostAnomalyMonitorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CostAnomalyMonitorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAnomalyMonitorCollection: CustomStringConvertible {
    public var description: String { "CostAnomalyMonitorCollection()" }
}