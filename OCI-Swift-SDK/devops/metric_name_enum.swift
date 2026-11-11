import Foundation

// MARK: - MetricNameEnum

public enum MetricNameEnum: String, Codable, Sendable {
    case commits = "COMMITS"
    case linesAdded = "LINES_ADDED"
    case linesDeleted = "LINES_DELETED"
    case pullRequestCreated = "PULL_REQUEST_CREATED"
    case pullRequestMerged = "PULL_REQUEST_MERGED"
    case pullRequestDeclined = "PULL_REQUEST_DECLINED"
    case pullRequestReviewStartDurationInDays = "PULL_REQUEST_REVIEW_START_DURATION_IN_DAYS"
    case pullRequestReviewDurationInDays = "PULL_REQUEST_REVIEW_DURATION_IN_DAYS"
    case pullRequestApproved = "PULL_REQUEST_APPROVED"
    case pullRequestReviewed = "PULL_REQUEST_REVIEWED"
    case pullRequestComments = "PULL_REQUEST_COMMENTS"
}

public extension MetricNameEnum {
    static var allValues: [MetricNameEnum] { [.commits, .linesAdded, .linesDeleted, .pullRequestCreated, .pullRequestMerged, .pullRequestDeclined, .pullRequestReviewStartDurationInDays, .pullRequestReviewDurationInDays, .pullRequestApproved, .pullRequestReviewed, .pullRequestComments] }
    static var allStringValues: [String] { ["COMMITS", "LINES_ADDED", "LINES_DELETED", "PULL_REQUEST_CREATED", "PULL_REQUEST_MERGED", "PULL_REQUEST_DECLINED", "PULL_REQUEST_REVIEW_START_DURATION_IN_DAYS", "PULL_REQUEST_REVIEW_DURATION_IN_DAYS", "PULL_REQUEST_APPROVED", "PULL_REQUEST_REVIEWED", "PULL_REQUEST_COMMENTS"] }
    static func fromString(_ value: String) -> MetricNameEnum? { MetricNameEnum(rawValue: value) }
}