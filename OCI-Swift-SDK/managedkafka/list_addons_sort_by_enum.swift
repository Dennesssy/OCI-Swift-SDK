import Foundation

// MARK: - ListAddonsSortByEnum

public enum ListAddonsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListAddonsSortByEnum {
    static var allValues: [ListAddonsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListAddonsSortByEnum? { ListAddonsSortByEnum(rawValue: value) }
}