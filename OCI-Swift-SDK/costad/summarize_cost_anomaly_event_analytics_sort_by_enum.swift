import Foundation

// MARK: - SummarizeCostAnomalyEventAnalyticsSortByEnum

public enum SummarizeCostAnomalyEventAnalyticsSortByEnum: String, Codable, Sendable {
    case timeanomalyeventdate = "timeAnomalyEventDate"
    case costanomalyname = "costAnomalyName"
    case id = "id"
}

public extension SummarizeCostAnomalyEventAnalyticsSortByEnum {
    static var allValues: [SummarizeCostAnomalyEventAnalyticsSortByEnum] { [.timeanomalyeventdate, .costanomalyname, .id] }
    static var allStringValues: [String] { ["timeAnomalyEventDate", "costAnomalyName", "id"] }
    static func fromString(_ value: String) -> SummarizeCostAnomalyEventAnalyticsSortByEnum? { SummarizeCostAnomalyEventAnalyticsSortByEnum(rawValue: value) }
}