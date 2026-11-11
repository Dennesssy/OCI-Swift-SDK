import Foundation

// MARK: - ListZprPolicyWorkRequestErrorsSortByEnum

public enum ListZprPolicyWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListZprPolicyWorkRequestErrorsSortByEnum {
    static var allValues: [ListZprPolicyWorkRequestErrorsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListZprPolicyWorkRequestErrorsSortByEnum? { ListZprPolicyWorkRequestErrorsSortByEnum(rawValue: value) }
}