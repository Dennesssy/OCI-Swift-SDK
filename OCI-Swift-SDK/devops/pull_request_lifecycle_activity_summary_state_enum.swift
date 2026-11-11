import Foundation

// MARK: - PullRequestLifecycleActivitySummaryStateEnum

public enum PullRequestLifecycleActivitySummaryStateEnum: String, Codable, Sendable {
    case opened = "OPENED"
    case closed = "CLOSED"
    case merged = "MERGED"
    case reopened = "REOPENED"
}

public extension PullRequestLifecycleActivitySummaryStateEnum {
    static var allValues: [PullRequestLifecycleActivitySummaryStateEnum] { [.opened, .closed, .merged, .reopened] }
    static var allStringValues: [String] { ["OPENED", "CLOSED", "MERGED", "REOPENED"] }
    static func fromString(_ value: String) -> PullRequestLifecycleActivitySummaryStateEnum? { PullRequestLifecycleActivitySummaryStateEnum(rawValue: value) }
}