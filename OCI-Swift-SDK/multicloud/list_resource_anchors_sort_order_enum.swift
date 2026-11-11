import Foundation

// MARK: - ListResourceAnchorsSortOrderEnum

public enum ListResourceAnchorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListResourceAnchorsSortOrderEnum {
    static var allValues: [ListResourceAnchorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListResourceAnchorsSortOrderEnum? { ListResourceAnchorsSortOrderEnum(rawValue: value) }
}