import Foundation

// MARK: - ListWorkRequestErrorsSortByEnum

public enum ListWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListWorkRequestErrorsSortByEnum {
    static var allValues: [ListWorkRequestErrorsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListWorkRequestErrorsSortByEnum? { ListWorkRequestErrorsSortByEnum(rawValue: value) }
}