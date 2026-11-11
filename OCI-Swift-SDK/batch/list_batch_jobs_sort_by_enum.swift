import Foundation

// MARK: - ListBatchJobsSortByEnum

public enum ListBatchJobsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBatchJobsSortByEnum {
    static var allValues: [ListBatchJobsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBatchJobsSortByEnum? { ListBatchJobsSortByEnum(rawValue: value) }
}