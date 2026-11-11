import Foundation

// MARK: - ListZprConfigurationWorkRequestsSortOrderEnum

public enum ListZprConfigurationWorkRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprConfigurationWorkRequestsSortOrderEnum {
    static var allValues: [ListZprConfigurationWorkRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprConfigurationWorkRequestsSortOrderEnum? { ListZprConfigurationWorkRequestsSortOrderEnum(rawValue: value) }
}