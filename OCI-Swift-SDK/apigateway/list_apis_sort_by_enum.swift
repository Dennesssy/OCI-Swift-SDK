import Foundation

// MARK: - ListApisSortByEnum

public enum ListApisSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListApisSortByEnum {
    static var allValues: [ListApisSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListApisSortByEnum? { ListApisSortByEnum(rawValue: value) }
}