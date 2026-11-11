import Foundation

// MARK: - ListUsersSortByEnum

public enum ListUsersSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListUsersSortByEnum {
    static var allValues: [ListUsersSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListUsersSortByEnum? { ListUsersSortByEnum(rawValue: value) }
}