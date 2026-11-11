import Foundation

// MARK: - ListInstancesSortByEnum

public enum ListInstancesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListInstancesSortByEnum {
    static var allValues: [ListInstancesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListInstancesSortByEnum? { ListInstancesSortByEnum(rawValue: value) }
}