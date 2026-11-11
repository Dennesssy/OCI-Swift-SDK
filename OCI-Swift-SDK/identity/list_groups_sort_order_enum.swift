import Foundation

// MARK: - ListGroupsSortOrderEnum

public enum ListGroupsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGroupsSortOrderEnum {
    static var allValues: [ListGroupsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGroupsSortOrderEnum? { ListGroupsSortOrderEnum(rawValue: value) }
}