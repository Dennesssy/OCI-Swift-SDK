import Foundation

// MARK: - ListDelegationSubscriptionsSortByEnum

public enum ListDelegationSubscriptionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDelegationSubscriptionsSortByEnum {
    static var allValues: [ListDelegationSubscriptionsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDelegationSubscriptionsSortByEnum? { ListDelegationSubscriptionsSortByEnum(rawValue: value) }
}