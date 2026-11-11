import Foundation

// MARK: - ListZprPolicyWorkRequestErrorsSortOrderEnum

public enum ListZprPolicyWorkRequestErrorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprPolicyWorkRequestErrorsSortOrderEnum {
    static var allValues: [ListZprPolicyWorkRequestErrorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprPolicyWorkRequestErrorsSortOrderEnum? { ListZprPolicyWorkRequestErrorsSortOrderEnum(rawValue: value) }
}