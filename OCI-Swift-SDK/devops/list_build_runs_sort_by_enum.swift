import Foundation

// MARK: - ListBuildRunsSortByEnum

public enum ListBuildRunsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBuildRunsSortByEnum {
    static var allValues: [ListBuildRunsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBuildRunsSortByEnum? { ListBuildRunsSortByEnum(rawValue: value) }
}