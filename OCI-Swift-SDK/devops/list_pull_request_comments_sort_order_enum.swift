import Foundation

// MARK: - ListPullRequestCommentsSortOrderEnum

public enum ListPullRequestCommentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPullRequestCommentsSortOrderEnum {
    static var allValues: [ListPullRequestCommentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPullRequestCommentsSortOrderEnum? { ListPullRequestCommentsSortOrderEnum(rawValue: value) }
}