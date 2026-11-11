import Foundation

// MARK: - ListConnectionsSortOrderEnum

public enum ListConnectionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListConnectionsSortOrderEnum {
    static var allValues: [ListConnectionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListConnectionsSortOrderEnum? { ListConnectionsSortOrderEnum(rawValue: value) }
}