import Foundation

// MARK: - ListPullRequestActivitiesActivityTypeEnum

public enum ListPullRequestActivitiesActivityTypeEnum: String, Codable, Sendable {
    case lifecycle = "LIFECYCLE"
    case approval = "APPROVAL"
    case commit = "COMMIT"
    case reviewer = "REVIEWER"
    case comment = "COMMENT"
}

public extension ListPullRequestActivitiesActivityTypeEnum {
    static var allValues: [ListPullRequestActivitiesActivityTypeEnum] { [.lifecycle, .approval, .commit, .reviewer, .comment] }
    static var allStringValues: [String] { ["LIFECYCLE", "APPROVAL", "COMMIT", "REVIEWER", "COMMENT"] }
    static func fromString(_ value: String) -> ListPullRequestActivitiesActivityTypeEnum? { ListPullRequestActivitiesActivityTypeEnum(rawValue: value) }
}