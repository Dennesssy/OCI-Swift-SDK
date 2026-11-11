import Foundation

// MARK: - ListLimitsIncreaseItemRequestsSortOrderEnum

public enum ListLimitsIncreaseItemRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListLimitsIncreaseItemRequestsSortOrderEnum {
    static var allValues: [ListLimitsIncreaseItemRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListLimitsIncreaseItemRequestsSortOrderEnum? { ListLimitsIncreaseItemRequestsSortOrderEnum(rawValue: value) }
}