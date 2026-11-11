import Foundation

// MARK: - ListDigitalTwinModelsSortByEnum

public enum ListDigitalTwinModelsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDigitalTwinModelsSortByEnum {
    static var allValues: [ListDigitalTwinModelsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDigitalTwinModelsSortByEnum? { ListDigitalTwinModelsSortByEnum(rawValue: value) }
}