import Foundation

// MARK: - ListAuthorsSortOrderEnum

public enum ListAuthorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAuthorsSortOrderEnum {
    static var allValues: [ListAuthorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAuthorsSortOrderEnum? { ListAuthorsSortOrderEnum(rawValue: value) }
}