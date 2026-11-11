import Foundation

// MARK: - ListDigitalTwinAdaptersSortByEnum

public enum ListDigitalTwinAdaptersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDigitalTwinAdaptersSortByEnum {
    static var allValues: [ListDigitalTwinAdaptersSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDigitalTwinAdaptersSortByEnum? { ListDigitalTwinAdaptersSortByEnum(rawValue: value) }
}