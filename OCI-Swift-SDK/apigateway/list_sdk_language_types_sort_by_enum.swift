import Foundation

// MARK: - ListSdkLanguageTypesSortByEnum

public enum ListSdkLanguageTypesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListSdkLanguageTypesSortByEnum {
    static var allValues: [ListSdkLanguageTypesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListSdkLanguageTypesSortByEnum? { ListSdkLanguageTypesSortByEnum(rawValue: value) }
}