import Foundation

// MARK: - ListIotDomainGroupsSortByEnum

public enum ListIotDomainGroupsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListIotDomainGroupsSortByEnum {
    static var allValues: [ListIotDomainGroupsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListIotDomainGroupsSortByEnum? { ListIotDomainGroupsSortByEnum(rawValue: value) }
}