import Foundation

// MARK: - MaintenanceWindowRecurrenceTypeEnum

public enum MaintenanceWindowRecurrenceTypeEnum: String, Codable, Sendable {
    case weekly = "WEEKLY"
    case monthly = "MONTHLY"
}

public extension MaintenanceWindowRecurrenceTypeEnum {
    static var allValues: [MaintenanceWindowRecurrenceTypeEnum] { [.weekly, .monthly] }
    static var allStringValues: [String] { ["WEEKLY", "MONTHLY"] }
    static func fromString(_ value: String) -> MaintenanceWindowRecurrenceTypeEnum? { MaintenanceWindowRecurrenceTypeEnum(rawValue: value) }
}