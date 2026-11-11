import Foundation

// MARK: - ListMaintenanceRunsSortOrderEnum

public enum ListMaintenanceRunsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMaintenanceRunsSortOrderEnum {
    static var allValues: [ListMaintenanceRunsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMaintenanceRunsSortOrderEnum? { ListMaintenanceRunsSortOrderEnum(rawValue: value) }
}