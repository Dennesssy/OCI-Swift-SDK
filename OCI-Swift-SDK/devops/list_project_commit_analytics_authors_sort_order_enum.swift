import Foundation

// MARK: - ListProjectCommitAnalyticsAuthorsSortOrderEnum

public enum ListProjectCommitAnalyticsAuthorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListProjectCommitAnalyticsAuthorsSortOrderEnum {
    static var allValues: [ListProjectCommitAnalyticsAuthorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListProjectCommitAnalyticsAuthorsSortOrderEnum? { ListProjectCommitAnalyticsAuthorsSortOrderEnum(rawValue: value) }
}