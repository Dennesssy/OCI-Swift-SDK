import Foundation

// MARK: - ExecuteMergePullRequestDetailsPostMergeActionEnum

public enum ExecuteMergePullRequestDetailsPostMergeActionEnum: String, Codable, Sendable {
    case deleteSourceBranch = "DELETE_SOURCE_BRANCH"
    case keepSourceBranch = "KEEP_SOURCE_BRANCH"
}

public extension ExecuteMergePullRequestDetailsPostMergeActionEnum {
    static var allValues: [ExecuteMergePullRequestDetailsPostMergeActionEnum] { [.deleteSourceBranch, .keepSourceBranch] }
    static var allStringValues: [String] { ["DELETE_SOURCE_BRANCH", "KEEP_SOURCE_BRANCH"] }
    static func fromString(_ value: String) -> ExecuteMergePullRequestDetailsPostMergeActionEnum? { ExecuteMergePullRequestDetailsPostMergeActionEnum(rawValue: value) }
}