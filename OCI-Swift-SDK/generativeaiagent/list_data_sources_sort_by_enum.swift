import Foundation

// MARK: - ListDataSourcesSortByEnum

public enum ListDataSourcesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDataSourcesSortByEnum {
    static var allValues: [ListDataSourcesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDataSourcesSortByEnum? { ListDataSourcesSortByEnum(rawValue: value) }
}