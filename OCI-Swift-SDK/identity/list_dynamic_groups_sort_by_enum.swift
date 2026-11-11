import Foundation

// MARK: - ListDynamicGroupsSortByEnum

public enum ListDynamicGroupsSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListDynamicGroupsSortByEnum {
    static var allValues: [ListDynamicGroupsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListDynamicGroupsSortByEnum? { ListDynamicGroupsSortByEnum(rawValue: value) }
}