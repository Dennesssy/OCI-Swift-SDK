import Foundation

// MARK: - MaintenanceWindowDaysOfWeekEnum

public enum MaintenanceWindowDaysOfWeekEnum: String, Codable, Sendable {
    case monday = "MONDAY"
    case tuesday = "TUESDAY"
    case wednesday = "WEDNESDAY"
    case thursday = "THURSDAY"
    case friday = "FRIDAY"
    case saturday = "SATURDAY"
    case sunday = "SUNDAY"
}

public extension MaintenanceWindowDaysOfWeekEnum {
    static var allValues: [MaintenanceWindowDaysOfWeekEnum] { [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday] }
    static var allStringValues: [String] { ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"] }
    static func fromString(_ value: String) -> MaintenanceWindowDaysOfWeekEnum? { MaintenanceWindowDaysOfWeekEnum(rawValue: value) }
}