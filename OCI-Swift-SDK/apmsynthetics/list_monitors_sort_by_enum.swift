import Foundation

// MARK: - ListMonitorsSortByEnum

public enum ListMonitorsSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
    case timecreated = "timeCreated"
    case timeupdated = "timeUpdated"
    case status = "status"
    case monitortype = "monitorType"
    case maintenancewindowtimestarted = "maintenanceWindowTimeStarted"
}

public extension ListMonitorsSortByEnum {
    static var allValues: [ListMonitorsSortByEnum] { [.displayname, .timecreated, .timeupdated, .status, .monitortype, .maintenancewindowtimestarted] }
    static var allStringValues: [String] { ["displayName", "timeCreated", "timeUpdated", "status", "monitorType", "maintenanceWindowTimeStarted"] }
    static func fromString(_ value: String) -> ListMonitorsSortByEnum? { ListMonitorsSortByEnum(rawValue: value) }
}