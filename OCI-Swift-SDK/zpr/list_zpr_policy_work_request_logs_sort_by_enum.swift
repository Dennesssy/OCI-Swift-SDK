import Foundation

// MARK: - ListZprPolicyWorkRequestLogsSortByEnum

public enum ListZprPolicyWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListZprPolicyWorkRequestLogsSortByEnum {
    static var allValues: [ListZprPolicyWorkRequestLogsSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListZprPolicyWorkRequestLogsSortByEnum? { ListZprPolicyWorkRequestLogsSortByEnum(rawValue: value) }
}