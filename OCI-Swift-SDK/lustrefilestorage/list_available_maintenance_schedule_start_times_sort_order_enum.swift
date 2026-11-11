import Foundation

// MARK: - ListAvailableMaintenanceScheduleStartTimesSortOrderEnum

public enum ListAvailableMaintenanceScheduleStartTimesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAvailableMaintenanceScheduleStartTimesSortOrderEnum {
    static var allValues: [ListAvailableMaintenanceScheduleStartTimesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAvailableMaintenanceScheduleStartTimesSortOrderEnum? { ListAvailableMaintenanceScheduleStartTimesSortOrderEnum(rawValue: value) }
}