import Foundation

// MARK: - PrivilegedApiControlLifecycleStateEnum

public enum PrivilegedApiControlLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension PrivilegedApiControlLifecycleStateEnum {
    static var allValues: [PrivilegedApiControlLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed, .needsAttention] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> PrivilegedApiControlLifecycleStateEnum? { PrivilegedApiControlLifecycleStateEnum(rawValue: value) }
}