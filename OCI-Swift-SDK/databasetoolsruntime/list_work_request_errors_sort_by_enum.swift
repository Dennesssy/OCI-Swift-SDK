import Foundation

// MARK: - ListWorkRequestErrorsSortByEnum

public enum ListWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListWorkRequestErrorsSortByEnum {
    static var allValues: [ListWorkRequestErrorsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListWorkRequestErrorsSortByEnum? { ListWorkRequestErrorsSortByEnum(rawValue: value) }
}