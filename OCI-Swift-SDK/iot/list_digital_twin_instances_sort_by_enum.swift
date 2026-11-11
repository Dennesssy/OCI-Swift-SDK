import Foundation

// MARK: - ListDigitalTwinInstancesSortByEnum

public enum ListDigitalTwinInstancesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDigitalTwinInstancesSortByEnum {
    static var allValues: [ListDigitalTwinInstancesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDigitalTwinInstancesSortByEnum? { ListDigitalTwinInstancesSortByEnum(rawValue: value) }
}