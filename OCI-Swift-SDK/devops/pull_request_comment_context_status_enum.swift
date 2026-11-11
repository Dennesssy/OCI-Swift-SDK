import Foundation

// MARK: - PullRequestCommentContextStatusEnum

public enum PullRequestCommentContextStatusEnum: String, Codable, Sendable {
    case processed = "PROCESSED"
    case needsProcessing = "NEEDS_PROCESSING"
}

public extension PullRequestCommentContextStatusEnum {
    static var allValues: [PullRequestCommentContextStatusEnum] { [.processed, .needsProcessing] }
    static var allStringValues: [String] { ["PROCESSED", "NEEDS_PROCESSING"] }
    static func fromString(_ value: String) -> PullRequestCommentContextStatusEnum? { PullRequestCommentContextStatusEnum(rawValue: value) }
}