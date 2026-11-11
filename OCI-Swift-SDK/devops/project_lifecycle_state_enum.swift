import Foundation

// MARK: - ProjectLifecycleStateEnum

public enum ProjectLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension ProjectLifecycleStateEnum {
    static var allValues: [ProjectLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed, .needsAttention] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> ProjectLifecycleStateEnum? { ProjectLifecycleStateEnum(rawValue: value) }
}