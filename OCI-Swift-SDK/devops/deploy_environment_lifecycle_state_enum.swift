import Foundation

// MARK: - DeployEnvironmentLifecycleStateEnum

public enum DeployEnvironmentLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension DeployEnvironmentLifecycleStateEnum {
    static var allValues: [DeployEnvironmentLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed, .needsAttention] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> DeployEnvironmentLifecycleStateEnum? { DeployEnvironmentLifecycleStateEnum(rawValue: value) }
}