import Foundation

// MARK: - ListZprConfigurationWorkRequestLogsSortByEnum

public enum ListZprConfigurationWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListZprConfigurationWorkRequestLogsSortByEnum {
    static var allValues: [ListZprConfigurationWorkRequestLogsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListZprConfigurationWorkRequestLogsSortByEnum? { ListZprConfigurationWorkRequestLogsSortByEnum(rawValue: value) }
}