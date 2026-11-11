import Foundation

// MARK: - ListDelegatedResourceAccessRequestsSortByEnum

public enum ListDelegatedResourceAccessRequestsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDelegatedResourceAccessRequestsSortByEnum {
    static var allValues: [ListDelegatedResourceAccessRequestsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDelegatedResourceAccessRequestsSortByEnum? { ListDelegatedResourceAccessRequestsSortByEnum(rawValue: value) }
}