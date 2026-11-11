import Foundation

// MARK: - ListMaintenanceExecutionsMaintenanceTypeEnum

public enum ListMaintenanceExecutionsMaintenanceTypeEnum: String, Codable, Sendable {
    case planned = "PLANNED"
    case unplanned = "UNPLANNED"
}

public extension ListMaintenanceExecutionsMaintenanceTypeEnum {
    static var allValues: [ListMaintenanceExecutionsMaintenanceTypeEnum] { [.planned, .unplanned] }
    static var allStringValues: [String] { ["PLANNED", "UNPLANNED"] }
    static func fromString(_ value: String) -> ListMaintenanceExecutionsMaintenanceTypeEnum? { ListMaintenanceExecutionsMaintenanceTypeEnum(rawValue: value) }
}