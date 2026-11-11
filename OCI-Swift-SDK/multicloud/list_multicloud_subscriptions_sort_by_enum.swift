import Foundation

// MARK: - ListMulticloudSubscriptionsSortByEnum

public enum ListMulticloudSubscriptionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListMulticloudSubscriptionsSortByEnum {
    static var allValues: [ListMulticloudSubscriptionsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListMulticloudSubscriptionsSortByEnum? { ListMulticloudSubscriptionsSortByEnum(rawValue: value) }
}