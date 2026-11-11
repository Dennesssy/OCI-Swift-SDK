import Foundation

// MARK: - ListZprPolicyWorkRequestLogsSortOrderEnum

public enum ListZprPolicyWorkRequestLogsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprPolicyWorkRequestLogsSortOrderEnum {
    static var allValues: [ListZprPolicyWorkRequestLogsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprPolicyWorkRequestLogsSortOrderEnum? { ListZprPolicyWorkRequestLogsSortOrderEnum(rawValue: value) }
}