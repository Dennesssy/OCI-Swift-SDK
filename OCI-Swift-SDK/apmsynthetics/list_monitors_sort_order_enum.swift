import Foundation

// MARK: - ListMonitorsSortOrderEnum

public enum ListMonitorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMonitorsSortOrderEnum {
    static var allValues: [ListMonitorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMonitorsSortOrderEnum? { ListMonitorsSortOrderEnum(rawValue: value) }
}