import Foundation

// MARK: - QueryResultRowTypeSummary

public struct QueryResultRowTypeSummary: Codable, Sendable {

    public var dataType: String?
    public var unit: String?
    public var displayName: String?
    public var expression: String?
    public var queryResultRowTypeSummaries: [QueryResultRowTypeSummary]?

    private enum CodingKeys: String, CodingKey {
        case dataType, unit, displayName, expression, queryResultRowTypeSummaries
    }

    public init(
                dataType: String? = nil,
                unit: String? = nil,
                displayName: String? = nil,
                expression: String? = nil,
                queryResultRowTypeSummaries: [QueryResultRowTypeSummary]? = nil
    ) {
        self.dataType = dataType
        self.unit = unit
        self.displayName = displayName
        self.expression = expression
        self.queryResultRowTypeSummaries = queryResultRowTypeSummaries
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultRowTypeSummary: CustomStringConvertible {
    public var description: String { "QueryResultRowTypeSummary()" }
}