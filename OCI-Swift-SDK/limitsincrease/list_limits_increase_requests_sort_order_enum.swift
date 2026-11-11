import Foundation

// MARK: - ListLimitsIncreaseRequestsSortOrderEnum

public enum ListLimitsIncreaseRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListLimitsIncreaseRequestsSortOrderEnum {
    static var allValues: [ListLimitsIncreaseRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListLimitsIncreaseRequestsSortOrderEnum? { ListLimitsIncreaseRequestsSortOrderEnum(rawValue: value) }
}