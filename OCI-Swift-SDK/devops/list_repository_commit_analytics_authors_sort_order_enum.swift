import Foundation

// MARK: - ListRepositoryCommitAnalyticsAuthorsSortOrderEnum

public enum ListRepositoryCommitAnalyticsAuthorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListRepositoryCommitAnalyticsAuthorsSortOrderEnum {
    static var allValues: [ListRepositoryCommitAnalyticsAuthorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListRepositoryCommitAnalyticsAuthorsSortOrderEnum? { ListRepositoryCommitAnalyticsAuthorsSortOrderEnum(rawValue: value) }
}