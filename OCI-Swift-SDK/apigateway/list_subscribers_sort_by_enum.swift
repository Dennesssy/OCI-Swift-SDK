import Foundation

// MARK: - ListSubscribersSortByEnum

public enum ListSubscribersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListSubscribersSortByEnum {
    static var allValues: [ListSubscribersSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListSubscribersSortByEnum? { ListSubscribersSortByEnum(rawValue: value) }
}