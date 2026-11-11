import Foundation

// MARK: - ListRepositoriesSortByEnum

public enum ListRepositoriesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case displayname = "DISPLAYNAME"
}

public extension ListRepositoriesSortByEnum {
    static var allValues: [ListRepositoriesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["TIMECREATED", "DISPLAYNAME"] }
    static func fromString(_ value: String) -> ListRepositoriesSortByEnum? { ListRepositoriesSortByEnum(rawValue: value) }
}