import Foundation

// MARK: - ListResourceAnchorsSortByEnum

public enum ListResourceAnchorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListResourceAnchorsSortByEnum {
    static var allValues: [ListResourceAnchorsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListResourceAnchorsSortByEnum? { ListResourceAnchorsSortByEnum(rawValue: value) }
}