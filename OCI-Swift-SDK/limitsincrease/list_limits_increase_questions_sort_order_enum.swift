import Foundation

// MARK: - ListLimitsIncreaseQuestionsSortOrderEnum

public enum ListLimitsIncreaseQuestionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListLimitsIncreaseQuestionsSortOrderEnum {
    static var allValues: [ListLimitsIncreaseQuestionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListLimitsIncreaseQuestionsSortOrderEnum? { ListLimitsIncreaseQuestionsSortOrderEnum(rawValue: value) }
}