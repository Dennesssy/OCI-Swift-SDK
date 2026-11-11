import Foundation

// MARK: - ListScheduledQueriesSortOrderEnum

public enum ListScheduledQueriesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListScheduledQueriesSortOrderEnum {
    static var allValues: [ListScheduledQueriesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListScheduledQueriesSortOrderEnum? { ListScheduledQueriesSortOrderEnum(rawValue: value) }
}