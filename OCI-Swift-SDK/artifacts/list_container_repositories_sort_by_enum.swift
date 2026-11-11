import Foundation

// MARK: - ListContainerRepositoriesSortByEnum

public enum ListContainerRepositoriesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case displayname = "DISPLAYNAME"
}

public extension ListContainerRepositoriesSortByEnum {
    static var allValues: [ListContainerRepositoriesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["TIMECREATED", "DISPLAYNAME"] }
    static func fromString(_ value: String) -> ListContainerRepositoriesSortByEnum? { ListContainerRepositoriesSortByEnum(rawValue: value) }
}