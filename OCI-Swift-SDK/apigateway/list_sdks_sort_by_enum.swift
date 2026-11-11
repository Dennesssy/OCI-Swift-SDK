import Foundation

// MARK: - ListSdksSortByEnum

public enum ListSdksSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListSdksSortByEnum {
    static var allValues: [ListSdksSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListSdksSortByEnum? { ListSdksSortByEnum(rawValue: value) }
}