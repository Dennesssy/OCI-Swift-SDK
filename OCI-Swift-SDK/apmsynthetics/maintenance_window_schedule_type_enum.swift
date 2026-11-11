import Foundation

// MARK: - MaintenanceWindowScheduleTypeEnum

public enum MaintenanceWindowScheduleTypeEnum: String, Codable, Sendable {
    case oneTime = "ONE_TIME"
    case recurring = "RECURRING"
}

public extension MaintenanceWindowScheduleTypeEnum {
    static var allValues: [MaintenanceWindowScheduleTypeEnum] { [.oneTime, .recurring] }
    static var allStringValues: [String] { ["ONE_TIME", "RECURRING"] }
    static func fromString(_ value: String) -> MaintenanceWindowScheduleTypeEnum? { MaintenanceWindowScheduleTypeEnum(rawValue: value) }
}