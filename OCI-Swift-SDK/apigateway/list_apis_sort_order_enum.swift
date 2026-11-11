import Foundation

// MARK: - ListApisSortOrderEnum

public enum ListApisSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListApisSortOrderEnum {
    static var allValues: [ListApisSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListApisSortOrderEnum? { ListApisSortOrderEnum(rawValue: value) }
}