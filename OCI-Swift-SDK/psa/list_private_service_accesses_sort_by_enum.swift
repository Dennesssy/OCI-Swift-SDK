import Foundation

// MARK: - ListPrivateServiceAccessesSortByEnum

public enum ListPrivateServiceAccessesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListPrivateServiceAccessesSortByEnum {
    static var allValues: [ListPrivateServiceAccessesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListPrivateServiceAccessesSortByEnum? { ListPrivateServiceAccessesSortByEnum(rawValue: value) }
}