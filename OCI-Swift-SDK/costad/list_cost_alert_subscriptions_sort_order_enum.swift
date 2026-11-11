import Foundation

// MARK: - ListCostAlertSubscriptionsSortOrderEnum

public enum ListCostAlertSubscriptionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCostAlertSubscriptionsSortOrderEnum {
    static var allValues: [ListCostAlertSubscriptionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCostAlertSubscriptionsSortOrderEnum? { ListCostAlertSubscriptionsSortOrderEnum(rawValue: value) }
}