import Foundation

// MARK: - ListPullRequestActivitiesSortOrderEnum

public enum ListPullRequestActivitiesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPullRequestActivitiesSortOrderEnum {
    static var allValues: [ListPullRequestActivitiesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPullRequestActivitiesSortOrderEnum? { ListPullRequestActivitiesSortOrderEnum(rawValue: value) }
}