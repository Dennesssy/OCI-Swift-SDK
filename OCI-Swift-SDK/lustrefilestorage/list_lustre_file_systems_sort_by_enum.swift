import Foundation

// MARK: - ListLustreFileSystemsSortByEnum

public enum ListLustreFileSystemsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListLustreFileSystemsSortByEnum {
    static var allValues: [ListLustreFileSystemsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListLustreFileSystemsSortByEnum? { ListLustreFileSystemsSortByEnum(rawValue: value) }
}