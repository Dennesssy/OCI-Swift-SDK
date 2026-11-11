import Foundation

// MARK: - ListPullRequestsSortOrderEnum

public enum ListPullRequestsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPullRequestsSortOrderEnum {
    static var allValues: [ListPullRequestsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPullRequestsSortOrderEnum? { ListPullRequestsSortOrderEnum(rawValue: value) }
}