import Foundation

// MARK: - ListMaintenanceRunsSortByEnum

public enum ListMaintenanceRunsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
    case buildidentifier = "buildIdentifier"
}

public extension ListMaintenanceRunsSortByEnum {
    static var allValues: [ListMaintenanceRunsSortByEnum] { [.timecreated, .displayname, .buildidentifier] }
    static var allStringValues: [String] { ["timeCreated", "displayName", "buildIdentifier"] }
    static func fromString(_ value: String) -> ListMaintenanceRunsSortByEnum? { ListMaintenanceRunsSortByEnum(rawValue: value) }
}