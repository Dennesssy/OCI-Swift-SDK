import Foundation

// MARK: - SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum

public enum SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum: String, Codable, Sendable {
    case daily = "DAILY"
    case weekly = "WEEKLY"
    case monthly = "MONTHLY"
    case yearly = "YEARLY"
}

public extension SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum {
    static var allValues: [SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum] { [.daily, .weekly, .monthly, .yearly] }
    static var allStringValues: [String] { ["DAILY", "WEEKLY", "MONTHLY", "YEARLY"] }
    static func fromString(_ value: String) -> SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum? { SummarizeRepositoryAnalyticsDetailsAggregationDurationEnum(rawValue: value) }
}