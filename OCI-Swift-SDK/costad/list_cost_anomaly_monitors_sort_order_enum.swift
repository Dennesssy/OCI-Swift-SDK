import Foundation

// MARK: - ListCostAnomalyMonitorsSortOrderEnum

public enum ListCostAnomalyMonitorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCostAnomalyMonitorsSortOrderEnum {
    static var allValues: [ListCostAnomalyMonitorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCostAnomalyMonitorsSortOrderEnum? { ListCostAnomalyMonitorsSortOrderEnum(rawValue: value) }
}