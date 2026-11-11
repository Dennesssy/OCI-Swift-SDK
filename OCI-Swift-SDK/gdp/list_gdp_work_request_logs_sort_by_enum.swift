import Foundation

// MARK: - ListGdpWorkRequestLogsSortByEnum

public enum ListGdpWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListGdpWorkRequestLogsSortByEnum {
    static var allValues: [ListGdpWorkRequestLogsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestLogsSortByEnum? { ListGdpWorkRequestLogsSortByEnum(rawValue: value) }
}