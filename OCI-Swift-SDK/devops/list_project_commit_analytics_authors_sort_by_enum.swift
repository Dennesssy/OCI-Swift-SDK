import Foundation

// MARK: - ListProjectCommitAnalyticsAuthorsSortByEnum

public enum ListProjectCommitAnalyticsAuthorsSortByEnum: String, Codable, Sendable {
    case authorname = "authorName"
}

public extension ListProjectCommitAnalyticsAuthorsSortByEnum {
    static var allValues: [ListProjectCommitAnalyticsAuthorsSortByEnum] { [.authorname] }
    static var allStringValues: [String] { ["authorName"] }
    static func fromString(_ value: String) -> ListProjectCommitAnalyticsAuthorsSortByEnum? { ListProjectCommitAnalyticsAuthorsSortByEnum(rawValue: value) }
}