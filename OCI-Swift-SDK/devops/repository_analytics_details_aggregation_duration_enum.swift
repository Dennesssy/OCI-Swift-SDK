import Foundation

// MARK: - RepositoryAnalyticsDetailsAggregationDurationEnum

public enum RepositoryAnalyticsDetailsAggregationDurationEnum: String, Codable, Sendable {
    case daily = "DAILY"
    case weekly = "WEEKLY"
    case monthly = "MONTHLY"
    case yearly = "YEARLY"
}

public extension RepositoryAnalyticsDetailsAggregationDurationEnum {
    static var allValues: [RepositoryAnalyticsDetailsAggregationDurationEnum] { [.daily, .weekly, .monthly, .yearly] }
    static var allStringValues: [String] { ["DAILY", "WEEKLY", "MONTHLY", "YEARLY"] }
    static func fromString(_ value: String) -> RepositoryAnalyticsDetailsAggregationDurationEnum? { RepositoryAnalyticsDetailsAggregationDurationEnum(rawValue: value) }
}