import Foundation

// MARK: - SummarizeProjectRepositoryAnalyticsDetails

public struct SummarizeProjectRepositoryAnalyticsDetails: Codable, Sendable {

    public var repositoryMetrics: [MetricNameEnum]
    public var startTime: Date?
    public var authorEmail: String?
    public var aggregationDuration: SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum?
    public var endTime: Date?
    public var groupBy: SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum?

    private enum CodingKeys: String, CodingKey {
        case repositoryMetrics, startTime, authorEmail, aggregationDuration, endTime, groupBy
    }

    public init(
                repositoryMetrics: [MetricNameEnum],
                startTime: Date? = nil,
                authorEmail: String? = nil,
                aggregationDuration: SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum? = nil,
                endTime: Date? = nil,
                groupBy: SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum? = nil
    ) {
        self.repositoryMetrics = repositoryMetrics
        self.startTime = startTime
        self.authorEmail = authorEmail
        self.aggregationDuration = aggregationDuration
        self.endTime = endTime
        self.groupBy = groupBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeProjectRepositoryAnalyticsDetails: CustomStringConvertible {
    public var description: String { "SummarizeProjectRepositoryAnalyticsDetails()" }
}