import Foundation

// MARK: - ListBatchTaskProfilesSortByEnum

public enum ListBatchTaskProfilesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBatchTaskProfilesSortByEnum {
    static var allValues: [ListBatchTaskProfilesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBatchTaskProfilesSortByEnum? { ListBatchTaskProfilesSortByEnum(rawValue: value) }
}