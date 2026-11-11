import Foundation

// MARK: - ListAiDataPlatformsSortByEnum

public enum ListAiDataPlatformsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListAiDataPlatformsSortByEnum {
    static var allValues: [ListAiDataPlatformsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListAiDataPlatformsSortByEnum? { ListAiDataPlatformsSortByEnum(rawValue: value) }
}