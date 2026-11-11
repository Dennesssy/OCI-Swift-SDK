import Foundation

// MARK: - PullRequestCommentFileTypeEnum

public enum PullRequestCommentFileTypeEnum: String, Codable, Sendable {
    case source = "SOURCE"
    case destination = "DESTINATION"
}

public extension PullRequestCommentFileTypeEnum {
    static var allValues: [PullRequestCommentFileTypeEnum] { [.source, .destination] }
    static var allStringValues: [String] { ["SOURCE", "DESTINATION"] }
    static func fromString(_ value: String) -> PullRequestCommentFileTypeEnum? { PullRequestCommentFileTypeEnum(rawValue: value) }
}