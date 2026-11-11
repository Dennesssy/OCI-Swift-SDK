import Foundation

// MARK: - ListDigitalTwinRelationshipsSortByEnum

public enum ListDigitalTwinRelationshipsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDigitalTwinRelationshipsSortByEnum {
    static var allValues: [ListDigitalTwinRelationshipsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDigitalTwinRelationshipsSortByEnum? { ListDigitalTwinRelationshipsSortByEnum(rawValue: value) }
}