import Foundation

// MARK: - ListMaintenanceExecutionsSortByEnum

public enum ListMaintenanceExecutionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
    case buildidentifier = "buildIdentifier"
}

public extension ListMaintenanceExecutionsSortByEnum {
    static var allValues: [ListMaintenanceExecutionsSortByEnum] { [.timecreated, .displayname, .buildidentifier] }
    static var allStringValues: [String] { ["timeCreated", "displayName", "buildIdentifier"] }
    static func fromString(_ value: String) -> ListMaintenanceExecutionsSortByEnum? { ListMaintenanceExecutionsSortByEnum(rawValue: value) }
}