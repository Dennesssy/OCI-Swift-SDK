import Foundation

// MARK: - ListDomainsSortByEnum

public enum ListDomainsSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListDomainsSortByEnum {
    static var allValues: [ListDomainsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListDomainsSortByEnum? { ListDomainsSortByEnum(rawValue: value) }
}