import Foundation

// MARK: - PullRequestCommentStatusEnum

public enum PullRequestCommentStatusEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case outdated = "OUTDATED"
}

public extension PullRequestCommentStatusEnum {
    static var allValues: [PullRequestCommentStatusEnum] { [.active, .outdated] }
    static var allStringValues: [String] { ["ACTIVE", "OUTDATED"] }
    static func fromString(_ value: String) -> PullRequestCommentStatusEnum? { PullRequestCommentStatusEnum(rawValue: value) }
}