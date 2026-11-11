import Foundation

// MARK: - RepositoryAnalyticsDetails

public struct RepositoryAnalyticsDetails: Codable, Sendable {

    public var repositoryMetrics: [MetricNameEnum]
    public var startTime: Date?
    public var authorEmail: String?
    public var aggregationDuration: RepositoryAnalyticsDetailsAggregationDurationEnum?
    public var endTime: Date?
    public var groupBy: RepositoryAnalyticsDetailsGroupByEnum?

    private enum CodingKeys: String, CodingKey {
        case repositoryMetrics, startTime, authorEmail, aggregationDuration, endTime, groupBy
    }

    public init(
                repositoryMetrics: [MetricNameEnum],
                startTime: Date? = nil,
                authorEmail: String? = nil,
                aggregationDuration: RepositoryAnalyticsDetailsAggregationDurationEnum? = nil,
                endTime: Date? = nil,
                groupBy: RepositoryAnalyticsDetailsGroupByEnum? = nil
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

extension RepositoryAnalyticsDetails: CustomStringConvertible {
    public var description: String { "RepositoryAnalyticsDetails()" }
}