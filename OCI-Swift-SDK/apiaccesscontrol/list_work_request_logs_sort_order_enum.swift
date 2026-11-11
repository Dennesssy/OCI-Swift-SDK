import Foundation

// MARK: - ListWorkRequestLogsSortOrderEnum

public enum ListWorkRequestLogsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWorkRequestLogsSortOrderEnum {
    static var allValues: [ListWorkRequestLogsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWorkRequestLogsSortOrderEnum? { ListWorkRequestLogsSortOrderEnum(rawValue: value) }
}