import Foundation

// MARK: - ListWorkRequestsSortOrderEnum

public enum ListWorkRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWorkRequestsSortOrderEnum {
    static var allValues: [ListWorkRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWorkRequestsSortOrderEnum? { ListWorkRequestsSortOrderEnum(rawValue: value) }
}