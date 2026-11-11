import Foundation

// MARK: - ListWlsDomainServersSortByEnum

public enum ListWlsDomainServersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
}

public extension ListWlsDomainServersSortByEnum {
    static var allValues: [ListWlsDomainServersSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["timeCreated", "name"] }
    static func fromString(_ value: String) -> ListWlsDomainServersSortByEnum? { ListWlsDomainServersSortByEnum(rawValue: value) }
}