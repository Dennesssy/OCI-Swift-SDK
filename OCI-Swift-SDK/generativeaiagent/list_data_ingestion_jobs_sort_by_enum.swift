import Foundation

// MARK: - ListDataIngestionJobsSortByEnum

public enum ListDataIngestionJobsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDataIngestionJobsSortByEnum {
    static var allValues: [ListDataIngestionJobsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDataIngestionJobsSortByEnum? { ListDataIngestionJobsSortByEnum(rawValue: value) }
}