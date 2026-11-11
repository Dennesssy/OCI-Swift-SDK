import Foundation

// MARK: - ListToolsSortByEnum

public enum ListToolsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListToolsSortByEnum {
    static var allValues: [ListToolsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListToolsSortByEnum? { ListToolsSortByEnum(rawValue: value) }
}