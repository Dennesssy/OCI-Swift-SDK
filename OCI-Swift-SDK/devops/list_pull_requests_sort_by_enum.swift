import Foundation

// MARK: - ListPullRequestsSortByEnum

public enum ListPullRequestsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListPullRequestsSortByEnum {
    static var allValues: [ListPullRequestsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListPullRequestsSortByEnum? { ListPullRequestsSortByEnum(rawValue: value) }
}