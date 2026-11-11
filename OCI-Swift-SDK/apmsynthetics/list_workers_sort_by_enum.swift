import Foundation

// MARK: - ListWorkersSortByEnum

public enum ListWorkersSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
    case name = "name"
    case status = "status"
    case priority = "priority"
    case timecreated = "timeCreated"
    case timeupdated = "timeUpdated"
    case timelastsyncup = "timeLastSyncup"
}

public extension ListWorkersSortByEnum {
    static var allValues: [ListWorkersSortByEnum] { [.displayname, .name, .status, .priority, .timecreated, .timeupdated, .timelastsyncup] }
    static var allStringValues: [String] { ["displayName", "name", "status", "priority", "timeCreated", "timeUpdated", "timeLastSyncup"] }
    static func fromString(_ value: String) -> ListWorkersSortByEnum? { ListWorkersSortByEnum(rawValue: value) }
}