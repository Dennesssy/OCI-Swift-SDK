import Foundation

// MARK: - ListWlsDomainsSharingMiddlewaresSortByEnum

public enum ListWlsDomainsSharingMiddlewaresSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListWlsDomainsSharingMiddlewaresSortByEnum {
    static var allValues: [ListWlsDomainsSharingMiddlewaresSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListWlsDomainsSharingMiddlewaresSortByEnum? { ListWlsDomainsSharingMiddlewaresSortByEnum(rawValue: value) }
}