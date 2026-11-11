import Foundation

// MARK: - ListLustreFileSystemsSortOrderEnum

public enum ListLustreFileSystemsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListLustreFileSystemsSortOrderEnum {
    static var allValues: [ListLustreFileSystemsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListLustreFileSystemsSortOrderEnum? { ListLustreFileSystemsSortOrderEnum(rawValue: value) }
}