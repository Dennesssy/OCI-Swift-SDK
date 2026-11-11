import Foundation

// MARK: - ListWorkRequestLogsSortByEnum

public enum ListWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListWorkRequestLogsSortByEnum {
    static var allValues: [ListWorkRequestLogsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListWorkRequestLogsSortByEnum? { ListWorkRequestLogsSortByEnum(rawValue: value) }
}