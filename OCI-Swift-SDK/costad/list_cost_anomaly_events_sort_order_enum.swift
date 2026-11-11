import Foundation

// MARK: - ListCostAnomalyEventsSortOrderEnum

public enum ListCostAnomalyEventsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCostAnomalyEventsSortOrderEnum {
    static var allValues: [ListCostAnomalyEventsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCostAnomalyEventsSortOrderEnum? { ListCostAnomalyEventsSortOrderEnum(rawValue: value) }
}