import Foundation

// MARK: - ListZprConfigurationWorkRequestsSortByEnum

public enum ListZprConfigurationWorkRequestsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListZprConfigurationWorkRequestsSortByEnum {
    static var allValues: [ListZprConfigurationWorkRequestsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListZprConfigurationWorkRequestsSortByEnum? { ListZprConfigurationWorkRequestsSortByEnum(rawValue: value) }
}