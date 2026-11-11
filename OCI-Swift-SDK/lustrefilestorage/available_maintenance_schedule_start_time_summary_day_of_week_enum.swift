import Foundation

// MARK: - AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum

public enum AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum: String, Codable, Sendable {
    case monday = "MONDAY"
    case tuesday = "TUESDAY"
    case wednesday = "WEDNESDAY"
    case thursday = "THURSDAY"
    case friday = "FRIDAY"
    case saturday = "SATURDAY"
    case sunday = "SUNDAY"
}

public extension AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum {
    static var allValues: [AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum] { [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday] }
    static var allStringValues: [String] { ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"] }
    static func fromString(_ value: String) -> AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum? { AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum(rawValue: value) }
}