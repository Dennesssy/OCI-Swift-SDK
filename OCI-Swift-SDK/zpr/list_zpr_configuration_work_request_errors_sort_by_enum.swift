import Foundation

// MARK: - ListZprConfigurationWorkRequestErrorsSortByEnum

public enum ListZprConfigurationWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListZprConfigurationWorkRequestErrorsSortByEnum {
    static var allValues: [ListZprConfigurationWorkRequestErrorsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListZprConfigurationWorkRequestErrorsSortByEnum? { ListZprConfigurationWorkRequestErrorsSortByEnum(rawValue: value) }
}