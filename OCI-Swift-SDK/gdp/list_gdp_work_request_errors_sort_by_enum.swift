import Foundation

// MARK: - ListGdpWorkRequestErrorsSortByEnum

public enum ListGdpWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListGdpWorkRequestErrorsSortByEnum {
    static var allValues: [ListGdpWorkRequestErrorsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestErrorsSortByEnum? { ListGdpWorkRequestErrorsSortByEnum(rawValue: value) }
}