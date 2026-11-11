import Foundation

// MARK: - RepositoryMetricSummary

public struct RepositoryMetricSummary: Codable, Sendable {

    public var metricName: MetricNameEnum?
    public var durationInSeconds: Int64?
    public var dimensions: [String: String]?
    public var startTimestampInEpochSeconds: Int64?
    public var count: Double?
    public var sum: Double?

    private enum CodingKeys: String, CodingKey {
        case metricName, durationInSeconds, dimensions, startTimestampInEpochSeconds, count, sum
    }

    public init(
                metricName: MetricNameEnum? = nil,
                durationInSeconds: Int64? = nil,
                dimensions: [String: String]? = nil,
                startTimestampInEpochSeconds: Int64? = nil,
                count: Double? = nil,
                sum: Double? = nil
    ) {
        self.metricName = metricName
        self.durationInSeconds = durationInSeconds
        self.dimensions = dimensions
        self.startTimestampInEpochSeconds = startTimestampInEpochSeconds
        self.count = count
        self.sum = sum
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryMetricSummary: CustomStringConvertible {
    public var description: String { "RepositoryMetricSummary()" }
}