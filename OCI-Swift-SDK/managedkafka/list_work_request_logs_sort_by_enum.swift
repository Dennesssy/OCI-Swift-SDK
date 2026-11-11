import Foundation

// MARK: - ListWorkRequestLogsSortByEnum

public enum ListWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListWorkRequestLogsSortByEnum {
    static var allValues: [ListWorkRequestLogsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListWorkRequestLogsSortByEnum? { ListWorkRequestLogsSortByEnum(rawValue: value) }
}