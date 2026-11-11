import Foundation

// MARK: - ListDataSourcesSortOrderEnum

public enum ListDataSourcesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDataSourcesSortOrderEnum {
    static var allValues: [ListDataSourcesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDataSourcesSortOrderEnum? { ListDataSourcesSortOrderEnum(rawValue: value) }
}