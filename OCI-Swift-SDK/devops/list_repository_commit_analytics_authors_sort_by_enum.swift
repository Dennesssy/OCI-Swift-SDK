import Foundation

// MARK: - ListRepositoryCommitAnalyticsAuthorsSortByEnum

public enum ListRepositoryCommitAnalyticsAuthorsSortByEnum: String, Codable, Sendable {
    case authorname = "authorName"
}

public extension ListRepositoryCommitAnalyticsAuthorsSortByEnum {
    static var allValues: [ListRepositoryCommitAnalyticsAuthorsSortByEnum] { [.authorname] }
    static var allStringValues: [String] { ["authorName"] }
    static func fromString(_ value: String) -> ListRepositoryCommitAnalyticsAuthorsSortByEnum? { ListRepositoryCommitAnalyticsAuthorsSortByEnum(rawValue: value) }
}