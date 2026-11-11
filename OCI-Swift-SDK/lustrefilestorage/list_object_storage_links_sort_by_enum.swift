import Foundation

// MARK: - ListObjectStorageLinksSortByEnum

public enum ListObjectStorageLinksSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListObjectStorageLinksSortByEnum {
    static var allValues: [ListObjectStorageLinksSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListObjectStorageLinksSortByEnum? { ListObjectStorageLinksSortByEnum(rawValue: value) }
}