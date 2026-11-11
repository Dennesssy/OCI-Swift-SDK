import Foundation

// MARK: - ListProjectsSortByEnum

public enum ListProjectsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListProjectsSortByEnum {
    static var allValues: [ListProjectsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListProjectsSortByEnum? { ListProjectsSortByEnum(rawValue: value) }
}