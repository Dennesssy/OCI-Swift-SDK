import Foundation

// MARK: - ListRepositoriesSortByEnum

public enum ListRepositoriesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
}

public extension ListRepositoriesSortByEnum {
    static var allValues: [ListRepositoriesSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["timeCreated", "name"] }
    static func fromString(_ value: String) -> ListRepositoriesSortByEnum? { ListRepositoriesSortByEnum(rawValue: value) }
}