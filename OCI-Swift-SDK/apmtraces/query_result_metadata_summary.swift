import Foundation

// MARK: - QueryResultMetadataSummary

public struct QueryResultMetadataSummary: Codable, Sendable {

    public var queryResultRowTypeSummaries: [QueryResultRowTypeSummary]?
    public var sourceName: String?
    public var queryResultsGroupedBy: [QueryResultsGroupedBySummary]?
    public var queryResultsOrderedBy: [QueryResultsOrderedBySummary]?
    public var queryResultsTopologyInfo: QueryResultsTopologyInfo?
    public var timeSeriesIntervalInMins: Int?

    private enum CodingKeys: String, CodingKey {
        case queryResultRowTypeSummaries, sourceName, queryResultsGroupedBy, queryResultsOrderedBy, queryResultsTopologyInfo, timeSeriesIntervalInMins
    }

    public init(
                queryResultRowTypeSummaries: [QueryResultRowTypeSummary]? = nil,
                sourceName: String? = nil,
                queryResultsGroupedBy: [QueryResultsGroupedBySummary]? = nil,
                queryResultsOrderedBy: [QueryResultsOrderedBySummary]? = nil,
                queryResultsTopologyInfo: QueryResultsTopologyInfo? = nil,
                timeSeriesIntervalInMins: Int? = nil
    ) {
        self.queryResultRowTypeSummaries = queryResultRowTypeSummaries
        self.sourceName = sourceName
        self.queryResultsGroupedBy = queryResultsGroupedBy
        self.queryResultsOrderedBy = queryResultsOrderedBy
        self.queryResultsTopologyInfo = queryResultsTopologyInfo
        self.timeSeriesIntervalInMins = timeSeriesIntervalInMins
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultMetadataSummary: CustomStringConvertible {
    public var description: String { "QueryResultMetadataSummary()" }
}