import Foundation

// MARK: - DelegationControlLifecycleStateEnum

public enum DelegationControlLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension DelegationControlLifecycleStateEnum {
    static var allValues: [DelegationControlLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed, .needsAttention] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> DelegationControlLifecycleStateEnum? { DelegationControlLifecycleStateEnum(rawValue: value) }
}