import Foundation

// MARK: - SortByForCostAnomalyEventEnum

public enum SortByForCostAnomalyEventEnum: String, Codable, Sendable {
    case timeAnomalyEventDate = "timeAnomalyEventDate"
    case costAnomalyName = "costAnomalyName"
    case id = "id"
}

public extension SortByForCostAnomalyEventEnum {
    static var allValues: [SortByForCostAnomalyEventEnum] { [.timeAnomalyEventDate, .costAnomalyName, .id] }
    static var allStringValues: [String] { ["timeAnomalyEventDate", "costAnomalyName", "id"] }
    static func fromString(_ value: String) -> SortByForCostAnomalyEventEnum? { SortByForCostAnomalyEventEnum(rawValue: value) }
}