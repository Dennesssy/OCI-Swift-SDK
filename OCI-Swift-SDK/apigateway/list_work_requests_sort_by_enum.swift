import Foundation

// MARK: - ListWorkRequestsSortByEnum

public enum ListWorkRequestsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListWorkRequestsSortByEnum {
    static var allValues: [ListWorkRequestsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListWorkRequestsSortByEnum? { ListWorkRequestsSortByEnum(rawValue: value) }
}