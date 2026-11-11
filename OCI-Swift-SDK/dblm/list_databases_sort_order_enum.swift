import Foundation

// MARK: - ListDatabasesSortOrderEnum

public enum ListDatabasesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDatabasesSortOrderEnum {
    static var allValues: [ListDatabasesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDatabasesSortOrderEnum? { ListDatabasesSortOrderEnum(rawValue: value) }
}