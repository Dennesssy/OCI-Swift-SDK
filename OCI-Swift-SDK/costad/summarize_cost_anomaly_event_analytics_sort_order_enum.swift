import Foundation

// MARK: - SummarizeCostAnomalyEventAnalyticsSortOrderEnum

public enum SummarizeCostAnomalyEventAnalyticsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension SummarizeCostAnomalyEventAnalyticsSortOrderEnum {
    static var allValues: [SummarizeCostAnomalyEventAnalyticsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> SummarizeCostAnomalyEventAnalyticsSortOrderEnum? { SummarizeCostAnomalyEventAnalyticsSortOrderEnum(rawValue: value) }
}