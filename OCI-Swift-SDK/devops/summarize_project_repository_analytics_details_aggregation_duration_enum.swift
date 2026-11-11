import Foundation

// MARK: - SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum

public enum SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum: String, Codable, Sendable {
    case daily = "DAILY"
    case weekly = "WEEKLY"
    case monthly = "MONTHLY"
    case yearly = "YEARLY"
}

public extension SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum {
    static var allValues: [SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum] { [.daily, .weekly, .monthly, .yearly] }
    static var allStringValues: [String] { ["DAILY", "WEEKLY", "MONTHLY", "YEARLY"] }
    static func fromString(_ value: String) -> SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum? { SummarizeProjectRepositoryAnalyticsDetailsAggregationDurationEnum(rawValue: value) }
}