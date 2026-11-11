import Foundation

// MARK: - ListBatchTaskEnvironmentsSortByEnum

public enum ListBatchTaskEnvironmentsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListBatchTaskEnvironmentsSortByEnum {
    static var allValues: [ListBatchTaskEnvironmentsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListBatchTaskEnvironmentsSortByEnum? { ListBatchTaskEnvironmentsSortByEnum(rawValue: value) }
}