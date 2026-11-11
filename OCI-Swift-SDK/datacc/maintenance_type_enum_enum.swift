import Foundation

// MARK: - MaintenanceTypeEnumEnum

public enum MaintenanceTypeEnumEnum: String, Codable, Sendable {
    case planned = "PLANNED"
    case unplanned = "UNPLANNED"
}

public extension MaintenanceTypeEnumEnum {
    static var allValues: [MaintenanceTypeEnumEnum] { [.planned, .unplanned] }
    static var allStringValues: [String] { ["PLANNED", "UNPLANNED"] }
    static func fromString(_ value: String) -> MaintenanceTypeEnumEnum? { MaintenanceTypeEnumEnum(rawValue: value) }
}