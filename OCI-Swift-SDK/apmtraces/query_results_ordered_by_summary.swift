import Foundation

// MARK: - QueryResultsOrderedBySummary

public struct QueryResultsOrderedBySummary: Codable, Sendable {

    public var queryResultsOrderedBy: String?
    public var queryResultsSortOrder: String?

    private enum CodingKeys: String, CodingKey {
        case queryResultsOrderedBy, queryResultsSortOrder
    }

    public init(
                queryResultsOrderedBy: String? = nil,
                queryResultsSortOrder: String? = nil
    ) {
        self.queryResultsOrderedBy = queryResultsOrderedBy
        self.queryResultsSortOrder = queryResultsSortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultsOrderedBySummary: CustomStringConvertible {
    public var description: String { "QueryResultsOrderedBySummary()" }
}