import Foundation

// MARK: - ListZprPolicyWorkRequestsSortOrderEnum

public enum ListZprPolicyWorkRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprPolicyWorkRequestsSortOrderEnum {
    static var allValues: [ListZprPolicyWorkRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprPolicyWorkRequestsSortOrderEnum? { ListZprPolicyWorkRequestsSortOrderEnum(rawValue: value) }
}