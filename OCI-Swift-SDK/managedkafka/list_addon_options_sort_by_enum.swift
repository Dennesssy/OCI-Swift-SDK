import Foundation

// MARK: - ListAddonOptionsSortByEnum

public enum ListAddonOptionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListAddonOptionsSortByEnum {
    static var allValues: [ListAddonOptionsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListAddonOptionsSortByEnum? { ListAddonOptionsSortByEnum(rawValue: value) }
}