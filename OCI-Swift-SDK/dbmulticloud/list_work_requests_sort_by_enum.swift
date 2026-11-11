import Foundation

// MARK: - ListWorkRequestsSortByEnum

public enum ListWorkRequestsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListWorkRequestsSortByEnum {
    static var allValues: [ListWorkRequestsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListWorkRequestsSortByEnum? { ListWorkRequestsSortByEnum(rawValue: value) }
}