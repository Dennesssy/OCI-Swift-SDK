import Foundation

// MARK: - ListWorkRequestLogsSortByEnum

public enum ListWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListWorkRequestLogsSortByEnum {
    static var allValues: [ListWorkRequestLogsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListWorkRequestLogsSortByEnum? { ListWorkRequestLogsSortByEnum(rawValue: value) }
}