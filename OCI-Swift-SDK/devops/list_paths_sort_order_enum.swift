import Foundation

// MARK: - ListPathsSortOrderEnum

public enum ListPathsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPathsSortOrderEnum {
    static var allValues: [ListPathsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPathsSortOrderEnum? { ListPathsSortOrderEnum(rawValue: value) }
}