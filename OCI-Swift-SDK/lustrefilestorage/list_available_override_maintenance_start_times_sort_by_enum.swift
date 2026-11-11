import Foundation

// MARK: - ListAvailableOverrideMaintenanceStartTimesSortByEnum

public enum ListAvailableOverrideMaintenanceStartTimesSortByEnum: String, Codable, Sendable {
    case date = "date"
}

public extension ListAvailableOverrideMaintenanceStartTimesSortByEnum {
    static var allValues: [ListAvailableOverrideMaintenanceStartTimesSortByEnum] { [.date] }
    static var allStringValues: [String] { ["date"] }
    static func fromString(_ value: String) -> ListAvailableOverrideMaintenanceStartTimesSortByEnum? { ListAvailableOverrideMaintenanceStartTimesSortByEnum(rawValue: value) }
}