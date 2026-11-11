import Foundation

// MARK: - ListBatchContextsSortByEnum

public enum ListBatchContextsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBatchContextsSortByEnum {
    static var allValues: [ListBatchContextsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBatchContextsSortByEnum? { ListBatchContextsSortByEnum(rawValue: value) }
}