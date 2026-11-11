import Foundation

// MARK: - ListNodeShapesSortByEnum

public enum ListNodeShapesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListNodeShapesSortByEnum {
    static var allValues: [ListNodeShapesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListNodeShapesSortByEnum? { ListNodeShapesSortByEnum(rawValue: value) }
}