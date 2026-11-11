import Foundation

// MARK: - RepositoryMetricAggregation

public struct RepositoryMetricAggregation: Codable, Sendable {

    public var items: [RepositoryMetricSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RepositoryMetricSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryMetricAggregation: CustomStringConvertible {
    public var description: String { "RepositoryMetricAggregation()" }
}