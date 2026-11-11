import Foundation

// MARK: - ListWorkRequestLogsSortByEnum

public enum ListWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListWorkRequestLogsSortByEnum {
    static var allValues: [ListWorkRequestLogsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListWorkRequestLogsSortByEnum? { ListWorkRequestLogsSortByEnum(rawValue: value) }
}