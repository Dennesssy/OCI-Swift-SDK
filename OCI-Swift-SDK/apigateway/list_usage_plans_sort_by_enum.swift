import Foundation

// MARK: - ListUsagePlansSortByEnum

public enum ListUsagePlansSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListUsagePlansSortByEnum {
    static var allValues: [ListUsagePlansSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListUsagePlansSortByEnum? { ListUsagePlansSortByEnum(rawValue: value) }
}