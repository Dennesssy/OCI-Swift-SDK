import Foundation

// MARK: - ListToolsSortOrderEnum

public enum ListToolsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListToolsSortOrderEnum {
    static var allValues: [ListToolsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListToolsSortOrderEnum? { ListToolsSortOrderEnum(rawValue: value) }
}