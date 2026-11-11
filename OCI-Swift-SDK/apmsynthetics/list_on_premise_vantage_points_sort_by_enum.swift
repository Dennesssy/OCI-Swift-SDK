import Foundation

// MARK: - ListOnPremiseVantagePointsSortByEnum

public enum ListOnPremiseVantagePointsSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
    case name = "name"
    case timecreated = "timeCreated"
    case timeupdated = "timeUpdated"
}

public extension ListOnPremiseVantagePointsSortByEnum {
    static var allValues: [ListOnPremiseVantagePointsSortByEnum] { [.displayname, .name, .timecreated, .timeupdated] }
    static var allStringValues: [String] { ["displayName", "name", "timeCreated", "timeUpdated"] }
    static func fromString(_ value: String) -> ListOnPremiseVantagePointsSortByEnum? { ListOnPremiseVantagePointsSortByEnum(rawValue: value) }
}