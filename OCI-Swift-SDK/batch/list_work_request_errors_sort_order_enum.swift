import Foundation

// MARK: - ListWorkRequestErrorsSortOrderEnum

public enum ListWorkRequestErrorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWorkRequestErrorsSortOrderEnum {
    static var allValues: [ListWorkRequestErrorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWorkRequestErrorsSortOrderEnum? { ListWorkRequestErrorsSortOrderEnum(rawValue: value) }
}