import Foundation

// MARK: - ListManagedInstanceServersSortByEnum

public enum ListManagedInstanceServersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
}

public extension ListManagedInstanceServersSortByEnum {
    static var allValues: [ListManagedInstanceServersSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["timeCreated", "name"] }
    static func fromString(_ value: String) -> ListManagedInstanceServersSortByEnum? { ListManagedInstanceServersSortByEnum(rawValue: value) }
}