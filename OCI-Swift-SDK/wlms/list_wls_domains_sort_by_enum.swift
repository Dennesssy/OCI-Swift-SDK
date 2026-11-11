import Foundation

// MARK: - ListWlsDomainsSortByEnum

public enum ListWlsDomainsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListWlsDomainsSortByEnum {
    static var allValues: [ListWlsDomainsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListWlsDomainsSortByEnum? { ListWlsDomainsSortByEnum(rawValue: value) }
}