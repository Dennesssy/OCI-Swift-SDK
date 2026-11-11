import Foundation

// MARK: - PullRequestActivitySummaryActivityTypeEnum

public enum PullRequestActivitySummaryActivityTypeEnum: String, Codable, Sendable {
    case lifecycle = "LIFECYCLE"
    case approval = "APPROVAL"
    case commit = "COMMIT"
    case reviewer = "REVIEWER"
    case comment = "COMMENT"
}

public extension PullRequestActivitySummaryActivityTypeEnum {
    static var allValues: [PullRequestActivitySummaryActivityTypeEnum] { [.lifecycle, .approval, .commit, .reviewer, .comment] }
    static var allStringValues: [String] { ["LIFECYCLE", "APPROVAL", "COMMIT", "REVIEWER", "COMMENT"] }
    static func fromString(_ value: String) -> PullRequestActivitySummaryActivityTypeEnum? { PullRequestActivitySummaryActivityTypeEnum(rawValue: value) }
}