import Foundation

// MARK: - ListMulticloudPoliciesSortByEnum

public enum ListMulticloudPoliciesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListMulticloudPoliciesSortByEnum {
    static var allValues: [ListMulticloudPoliciesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListMulticloudPoliciesSortByEnum? { ListMulticloudPoliciesSortByEnum(rawValue: value) }
}