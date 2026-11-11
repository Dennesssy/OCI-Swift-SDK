import Foundation

// MARK: - ListRefsSortOrderEnum

public enum ListRefsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListRefsSortOrderEnum {
    static var allValues: [ListRefsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListRefsSortOrderEnum? { ListRefsSortOrderEnum(rawValue: value) }
}