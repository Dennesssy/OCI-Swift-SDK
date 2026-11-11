import Foundation

// MARK: - ListScriptsSortByEnum

public enum ListScriptsSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
    case timecreated = "timeCreated"
    case timeupdated = "timeUpdated"
    case contenttype = "contentType"
}

public extension ListScriptsSortByEnum {
    static var allValues: [ListScriptsSortByEnum] { [.displayname, .timecreated, .timeupdated, .contenttype] }
    static var allStringValues: [String] { ["displayName", "timeCreated", "timeUpdated", "contentType"] }
    static func fromString(_ value: String) -> ListScriptsSortByEnum? { ListScriptsSortByEnum(rawValue: value) }
}