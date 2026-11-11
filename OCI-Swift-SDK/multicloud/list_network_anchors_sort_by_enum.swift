import Foundation

// MARK: - ListNetworkAnchorsSortByEnum

public enum ListNetworkAnchorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListNetworkAnchorsSortByEnum {
    static var allValues: [ListNetworkAnchorsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListNetworkAnchorsSortByEnum? { ListNetworkAnchorsSortByEnum(rawValue: value) }
}