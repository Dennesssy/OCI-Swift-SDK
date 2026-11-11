import Foundation

// MARK: - ListUsersSortOrderEnum

public enum ListUsersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListUsersSortOrderEnum {
    static var allValues: [ListUsersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListUsersSortOrderEnum? { ListUsersSortOrderEnum(rawValue: value) }
}