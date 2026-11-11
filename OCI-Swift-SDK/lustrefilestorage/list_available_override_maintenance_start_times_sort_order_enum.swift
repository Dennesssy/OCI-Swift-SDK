import Foundation

// MARK: - ListAvailableOverrideMaintenanceStartTimesSortOrderEnum

public enum ListAvailableOverrideMaintenanceStartTimesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAvailableOverrideMaintenanceStartTimesSortOrderEnum {
    static var allValues: [ListAvailableOverrideMaintenanceStartTimesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAvailableOverrideMaintenanceStartTimesSortOrderEnum? { ListAvailableOverrideMaintenanceStartTimesSortOrderEnum(rawValue: value) }
}