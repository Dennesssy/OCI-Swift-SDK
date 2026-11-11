import Foundation

// MARK: - ListBatchJobPoolsSortByEnum

public enum ListBatchJobPoolsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBatchJobPoolsSortByEnum {
    static var allValues: [ListBatchJobPoolsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBatchJobPoolsSortByEnum? { ListBatchJobPoolsSortByEnum(rawValue: value) }
}