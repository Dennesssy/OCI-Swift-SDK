import Foundation

// MARK: - ListPoliciesSortByEnum

public enum ListPoliciesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListPoliciesSortByEnum {
    static var allValues: [ListPoliciesSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListPoliciesSortByEnum? { ListPoliciesSortByEnum(rawValue: value) }
}