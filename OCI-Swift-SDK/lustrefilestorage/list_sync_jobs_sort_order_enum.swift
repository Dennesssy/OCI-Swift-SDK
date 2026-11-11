import Foundation

// MARK: - ListSyncJobsSortOrderEnum

public enum ListSyncJobsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSyncJobsSortOrderEnum {
    static var allValues: [ListSyncJobsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSyncJobsSortOrderEnum? { ListSyncJobsSortOrderEnum(rawValue: value) }
}