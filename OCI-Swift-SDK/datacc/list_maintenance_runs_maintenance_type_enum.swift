import Foundation

// MARK: - ListMaintenanceRunsMaintenanceTypeEnum

public enum ListMaintenanceRunsMaintenanceTypeEnum: String, Codable, Sendable {
    case planned = "PLANNED"
    case unplanned = "UNPLANNED"
}

public extension ListMaintenanceRunsMaintenanceTypeEnum {
    static var allValues: [ListMaintenanceRunsMaintenanceTypeEnum] { [.planned, .unplanned] }
    static var allStringValues: [String] { ["PLANNED", "UNPLANNED"] }
    static func fromString(_ value: String) -> ListMaintenanceRunsMaintenanceTypeEnum? { ListMaintenanceRunsMaintenanceTypeEnum(rawValue: value) }
}