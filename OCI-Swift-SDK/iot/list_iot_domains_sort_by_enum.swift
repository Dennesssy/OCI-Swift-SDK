import Foundation

// MARK: - ListIotDomainsSortByEnum

public enum ListIotDomainsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListIotDomainsSortByEnum {
    static var allValues: [ListIotDomainsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListIotDomainsSortByEnum? { ListIotDomainsSortByEnum(rawValue: value) }
}