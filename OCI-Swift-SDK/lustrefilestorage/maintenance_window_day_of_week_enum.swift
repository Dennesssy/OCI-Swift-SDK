import Foundation

// MARK: - MaintenanceWindowDayOfWeekEnum

public enum MaintenanceWindowDayOfWeekEnum: String, Codable, Sendable {
    case monday = "MONDAY"
    case tuesday = "TUESDAY"
    case wednesday = "WEDNESDAY"
    case thursday = "THURSDAY"
    case friday = "FRIDAY"
    case saturday = "SATURDAY"
    case sunday = "SUNDAY"
}

public extension MaintenanceWindowDayOfWeekEnum {
    static var allValues: [MaintenanceWindowDayOfWeekEnum] { [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday] }
    static var allStringValues: [String] { ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"] }
    static func fromString(_ value: String) -> MaintenanceWindowDayOfWeekEnum? { MaintenanceWindowDayOfWeekEnum(rawValue: value) }
}