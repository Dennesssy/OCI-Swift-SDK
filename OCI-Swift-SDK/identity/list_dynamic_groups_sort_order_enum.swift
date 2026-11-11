import Foundation

// MARK: - ListDynamicGroupsSortOrderEnum

public enum ListDynamicGroupsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDynamicGroupsSortOrderEnum {
    static var allValues: [ListDynamicGroupsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDynamicGroupsSortOrderEnum? { ListDynamicGroupsSortOrderEnum(rawValue: value) }
}