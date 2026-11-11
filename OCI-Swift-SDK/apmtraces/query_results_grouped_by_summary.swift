import Foundation

// MARK: - QueryResultsGroupedBySummary

public struct QueryResultsGroupedBySummary: Codable, Sendable {

    public var queryResultsGroupedByColumn: String?

    private enum CodingKeys: String, CodingKey {
        case queryResultsGroupedByColumn
    }

    public init(
                queryResultsGroupedByColumn: String? = nil
    ) {
        self.queryResultsGroupedByColumn = queryResultsGroupedByColumn
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultsGroupedBySummary: CustomStringConvertible {
    public var description: String { "QueryResultsGroupedBySummary()" }
}