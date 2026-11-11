import Foundation

// MARK: - ListAddonsSortOrderEnum

public enum ListAddonsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAddonsSortOrderEnum {
    static var allValues: [ListAddonsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAddonsSortOrderEnum? { ListAddonsSortOrderEnum(rawValue: value) }
}