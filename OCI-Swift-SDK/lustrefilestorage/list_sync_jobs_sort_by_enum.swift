import Foundation

// MARK: - ListSyncJobsSortByEnum

public enum ListSyncJobsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListSyncJobsSortByEnum {
    static var allValues: [ListSyncJobsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListSyncJobsSortByEnum? { ListSyncJobsSortByEnum(rawValue: value) }
}