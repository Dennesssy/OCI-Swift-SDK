import Foundation

// MARK: - ListPullRequestCommentsSortByEnum

public enum ListPullRequestCommentsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case createdby = "createdBy"
}

public extension ListPullRequestCommentsSortByEnum {
    static var allValues: [ListPullRequestCommentsSortByEnum] { [.timecreated, .createdby] }
    static var allStringValues: [String] { ["timeCreated", "createdBy"] }
    static func fromString(_ value: String) -> ListPullRequestCommentsSortByEnum? { ListPullRequestCommentsSortByEnum(rawValue: value) }
}