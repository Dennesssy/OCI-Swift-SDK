import Foundation

// MARK: - ListPrivilegedApiControlsSortOrderEnum

public enum ListPrivilegedApiControlsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPrivilegedApiControlsSortOrderEnum {
    static var allValues: [ListPrivilegedApiControlsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPrivilegedApiControlsSortOrderEnum? { ListPrivilegedApiControlsSortOrderEnum(rawValue: value) }
}