import Foundation

// MARK: - ListDedicatedVantagePointsSortByEnum

public enum ListDedicatedVantagePointsSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
    case name = "name"
    case timecreated = "timeCreated"
    case timeupdated = "timeUpdated"
    case status = "status"
}

public extension ListDedicatedVantagePointsSortByEnum {
    static var allValues: [ListDedicatedVantagePointsSortByEnum] { [.displayname, .name, .timecreated, .timeupdated, .status] }
    static var allStringValues: [String] { ["displayName", "name", "timeCreated", "timeUpdated", "status"] }
    static func fromString(_ value: String) -> ListDedicatedVantagePointsSortByEnum? { ListDedicatedVantagePointsSortByEnum(rawValue: value) }
}