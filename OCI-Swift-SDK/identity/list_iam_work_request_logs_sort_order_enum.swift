import Foundation

// MARK: - ListIamWorkRequestLogsSortOrderEnum

public enum ListIamWorkRequestLogsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListIamWorkRequestLogsSortOrderEnum {
    static var allValues: [ListIamWorkRequestLogsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListIamWorkRequestLogsSortOrderEnum? { ListIamWorkRequestLogsSortOrderEnum(rawValue: value) }
}