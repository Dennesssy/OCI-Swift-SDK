import Foundation

// MARK: - ListTriggersSortByEnum

public enum ListTriggersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListTriggersSortByEnum {
    static var allValues: [ListTriggersSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListTriggersSortByEnum? { ListTriggersSortByEnum(rawValue: value) }
}