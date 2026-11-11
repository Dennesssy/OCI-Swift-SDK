import Foundation

// MARK: - ListZprConfigurationWorkRequestErrorsSortOrderEnum

public enum ListZprConfigurationWorkRequestErrorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprConfigurationWorkRequestErrorsSortOrderEnum {
    static var allValues: [ListZprConfigurationWorkRequestErrorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprConfigurationWorkRequestErrorsSortOrderEnum? { ListZprConfigurationWorkRequestErrorsSortOrderEnum(rawValue: value) }
}