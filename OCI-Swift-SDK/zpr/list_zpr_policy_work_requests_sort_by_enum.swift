import Foundation

// MARK: - ListZprPolicyWorkRequestsSortByEnum

public enum ListZprPolicyWorkRequestsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListZprPolicyWorkRequestsSortByEnum {
    static var allValues: [ListZprPolicyWorkRequestsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListZprPolicyWorkRequestsSortByEnum? { ListZprPolicyWorkRequestsSortByEnum(rawValue: value) }
}