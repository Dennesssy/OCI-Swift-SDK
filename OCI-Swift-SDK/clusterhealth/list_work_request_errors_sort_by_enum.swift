import Foundation

// MARK: - ListWorkRequestErrorsSortByEnum

public enum ListWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListWorkRequestErrorsSortByEnum {
    static var allValues: [ListWorkRequestErrorsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListWorkRequestErrorsSortByEnum? { ListWorkRequestErrorsSortByEnum(rawValue: value) }
}