import Foundation

// MARK: - ListContainerImagesSortByEnum

public enum ListContainerImagesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case displayname = "DISPLAYNAME"
}

public extension ListContainerImagesSortByEnum {
    static var allValues: [ListContainerImagesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["TIMECREATED", "DISPLAYNAME"] }
    static func fromString(_ value: String) -> ListContainerImagesSortByEnum? { ListContainerImagesSortByEnum(rawValue: value) }
}