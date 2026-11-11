import Foundation

// MARK: - ListMaintenanceExecutionsSortOrderEnum

public enum ListMaintenanceExecutionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMaintenanceExecutionsSortOrderEnum {
    static var allValues: [ListMaintenanceExecutionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMaintenanceExecutionsSortOrderEnum? { ListMaintenanceExecutionsSortOrderEnum(rawValue: value) }
}