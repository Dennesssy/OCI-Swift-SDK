import Foundation

// MARK: - ListPrivilegedApiRequestsSortOrderEnum

public enum ListPrivilegedApiRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPrivilegedApiRequestsSortOrderEnum {
    static var allValues: [ListPrivilegedApiRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPrivilegedApiRequestsSortOrderEnum? { ListPrivilegedApiRequestsSortOrderEnum(rawValue: value) }
}