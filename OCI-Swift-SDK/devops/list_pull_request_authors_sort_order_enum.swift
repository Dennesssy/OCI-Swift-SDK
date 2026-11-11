import Foundation

// MARK: - ListPullRequestAuthorsSortOrderEnum

public enum ListPullRequestAuthorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPullRequestAuthorsSortOrderEnum {
    static var allValues: [ListPullRequestAuthorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPullRequestAuthorsSortOrderEnum? { ListPullRequestAuthorsSortOrderEnum(rawValue: value) }
}