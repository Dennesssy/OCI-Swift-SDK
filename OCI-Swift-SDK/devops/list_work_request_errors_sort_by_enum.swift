import Foundation

// MARK: - ListWorkRequestErrorsSortByEnum

public enum ListWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListWorkRequestErrorsSortByEnum {
    static var allValues: [ListWorkRequestErrorsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListWorkRequestErrorsSortByEnum? { ListWorkRequestErrorsSortByEnum(rawValue: value) }
}