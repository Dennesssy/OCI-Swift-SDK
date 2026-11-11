import Foundation

// MARK: - ListGdpWorkRequestsSortByEnum

public enum ListGdpWorkRequestsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListGdpWorkRequestsSortByEnum {
    static var allValues: [ListGdpWorkRequestsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestsSortByEnum? { ListGdpWorkRequestsSortByEnum(rawValue: value) }
}