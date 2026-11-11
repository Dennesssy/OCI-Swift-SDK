import Foundation

// MARK: - SummarizeRepositoryAnalyticsDetails

public struct SummarizeRepositoryAnalyticsDetails: Codable, Sendable {

    public var repositoryMetrics: [MetricNameEnum]
    public var startTime: Date?
    public var authorEmail: String?
    public var aggregationDuration: SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum?
    public var endTime: Date?
    public var groupBy: SummarizeRepositoryAnalyticsDetailsGroupByEnum?

    private enum CodingKeys: String, CodingKey {
        case repositoryMetrics, startTime, authorEmail, aggregationDuration, endTime, groupBy
    }

    public init(
                repositoryMetrics: [MetricNameEnum],
                startTime: Date? = nil,
                authorEmail: String? = nil,
                aggregationDuration: SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum? = nil,
                endTime: Date? = nil,
                groupBy: SummarizeRepositoryAnalyticsDetailsGroupByEnum? = nil
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

extension SummarizeRepositoryAnalyticsDetails: CustomStringConvertible {
    public var description: String { "SummarizeRepositoryAnalyticsDetails()" }
}