import Foundation

// MARK: - ReviewPullRequestDetailsActionEnum

public enum ReviewPullRequestDetailsActionEnum: String, Codable, Sendable {
    case approve = "APPROVE"
    case unapprove = "UNAPPROVE"
}

public extension ReviewPullRequestDetailsActionEnum {
    static var allValues: [ReviewPullRequestDetailsActionEnum] { [.approve, .unapprove] }
    static var allStringValues: [String] { ["APPROVE", "UNAPPROVE"] }
    static func fromString(_ value: String) -> ReviewPullRequestDetailsActionEnum? { ReviewPullRequestDetailsActionEnum(rawValue: value) }
}