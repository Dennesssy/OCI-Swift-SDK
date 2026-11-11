import Foundation

// MARK: - ListProjectsSortOrderEnum

public enum ListProjectsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListProjectsSortOrderEnum {
    static var allValues: [ListProjectsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListProjectsSortOrderEnum? { ListProjectsSortOrderEnum(rawValue: value) }
}