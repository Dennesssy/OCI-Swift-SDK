import Foundation

// MARK: - ListCostAnomalyEventsSortByEnum

public enum ListCostAnomalyEventsSortByEnum: String, Codable, Sendable {
    case timeanomalyeventdate = "timeAnomalyEventDate"
    case costanomalyname = "costAnomalyName"
    case id = "id"
}

public extension ListCostAnomalyEventsSortByEnum {
    static var allValues: [ListCostAnomalyEventsSortByEnum] { [.timeanomalyeventdate, .costanomalyname, .id] }
    static var allStringValues: [String] { ["timeAnomalyEventDate", "costAnomalyName", "id"] }
    static func fromString(_ value: String) -> ListCostAnomalyEventsSortByEnum? { ListCostAnomalyEventsSortByEnum(rawValue: value) }
}