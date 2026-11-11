import Foundation

// MARK: - ListAddonOptionsSortOrderEnum

public enum ListAddonOptionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAddonOptionsSortOrderEnum {
    static var allValues: [ListAddonOptionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAddonOptionsSortOrderEnum? { ListAddonOptionsSortOrderEnum(rawValue: value) }
}