import Foundation

// MARK: - ListZprConfigurationWorkRequestLogsSortOrderEnum

public enum ListZprConfigurationWorkRequestLogsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprConfigurationWorkRequestLogsSortOrderEnum {
    static var allValues: [ListZprConfigurationWorkRequestLogsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprConfigurationWorkRequestLogsSortOrderEnum? { ListZprConfigurationWorkRequestLogsSortOrderEnum(rawValue: value) }
}