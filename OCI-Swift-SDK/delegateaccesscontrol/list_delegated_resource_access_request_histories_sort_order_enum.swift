import Foundation

// MARK: - ListDelegatedResourceAccessRequestHistoriesSortOrderEnum

public enum ListDelegatedResourceAccessRequestHistoriesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDelegatedResourceAccessRequestHistoriesSortOrderEnum {
    static var allValues: [ListDelegatedResourceAccessRequestHistoriesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDelegatedResourceAccessRequestHistoriesSortOrderEnum? { ListDelegatedResourceAccessRequestHistoriesSortOrderEnum(rawValue: value) }
}