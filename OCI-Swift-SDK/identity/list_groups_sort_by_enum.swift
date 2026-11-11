import Foundation

// MARK: - ListGroupsSortByEnum

public enum ListGroupsSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListGroupsSortByEnum {
    static var allValues: [ListGroupsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListGroupsSortByEnum? { ListGroupsSortByEnum(rawValue: value) }
}