import Foundation

// MARK: - ListIamWorkRequestErrorsSortOrderEnum

public enum ListIamWorkRequestErrorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListIamWorkRequestErrorsSortOrderEnum {
    static var allValues: [ListIamWorkRequestErrorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListIamWorkRequestErrorsSortOrderEnum? { ListIamWorkRequestErrorsSortOrderEnum(rawValue: value) }
}