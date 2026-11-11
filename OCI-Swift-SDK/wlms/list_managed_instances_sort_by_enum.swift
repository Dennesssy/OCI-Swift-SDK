import Foundation

// MARK: - ListManagedInstancesSortByEnum

public enum ListManagedInstancesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListManagedInstancesSortByEnum {
    static var allValues: [ListManagedInstancesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListManagedInstancesSortByEnum? { ListManagedInstancesSortByEnum(rawValue: value) }
}