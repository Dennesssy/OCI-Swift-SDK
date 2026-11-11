import Foundation

// MARK: - ListProvisionedCapacitiesSortByEnum

public enum ListProvisionedCapacitiesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListProvisionedCapacitiesSortByEnum {
    static var allValues: [ListProvisionedCapacitiesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListProvisionedCapacitiesSortByEnum? { ListProvisionedCapacitiesSortByEnum(rawValue: value) }
}