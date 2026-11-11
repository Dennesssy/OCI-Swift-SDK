import Foundation

// MARK: - ListZprPoliciesSortOrderEnum

public enum ListZprPoliciesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListZprPoliciesSortOrderEnum {
    static var allValues: [ListZprPoliciesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListZprPoliciesSortOrderEnum? { ListZprPoliciesSortOrderEnum(rawValue: value) }
}