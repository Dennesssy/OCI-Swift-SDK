import Foundation

// MARK: - ListAvailableMaintenanceScheduleStartTimesSortByEnum

public enum ListAvailableMaintenanceScheduleStartTimesSortByEnum: String, Codable, Sendable {
    case dayofweek = "dayOfWeek"
}

public extension ListAvailableMaintenanceScheduleStartTimesSortByEnum {
    static var allValues: [ListAvailableMaintenanceScheduleStartTimesSortByEnum] { [.dayofweek] }
    static var allStringValues: [String] { ["dayOfWeek"] }
    static func fromString(_ value: String) -> ListAvailableMaintenanceScheduleStartTimesSortByEnum? { ListAvailableMaintenanceScheduleStartTimesSortByEnum(rawValue: value) }
}