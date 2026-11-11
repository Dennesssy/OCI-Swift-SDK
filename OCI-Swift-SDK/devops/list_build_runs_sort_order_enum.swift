import Foundation

// MARK: - ListBuildRunsSortOrderEnum

public enum ListBuildRunsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBuildRunsSortOrderEnum {
    static var allValues: [ListBuildRunsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBuildRunsSortOrderEnum? { ListBuildRunsSortOrderEnum(rawValue: value) }
}