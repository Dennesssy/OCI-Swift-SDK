import Foundation

// MARK: - ListConnectionsSortByEnum

public enum ListConnectionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListConnectionsSortByEnum {
    static var allValues: [ListConnectionsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListConnectionsSortByEnum? { ListConnectionsSortByEnum(rawValue: value) }
}