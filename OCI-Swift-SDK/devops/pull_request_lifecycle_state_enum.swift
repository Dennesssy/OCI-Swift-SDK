import Foundation

// MARK: - PullRequestLifecycleStateEnum

public enum PullRequestLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension PullRequestLifecycleStateEnum {
    static var allValues: [PullRequestLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> PullRequestLifecycleStateEnum? { PullRequestLifecycleStateEnum(rawValue: value) }
}