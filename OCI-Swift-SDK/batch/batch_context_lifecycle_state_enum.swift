import Foundation

// MARK: - BatchContextLifecycleStateEnum

public enum BatchContextLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case updating = "UPDATING"
    case needsAttention = "NEEDS_ATTENTION"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension BatchContextLifecycleStateEnum {
    static var allValues: [BatchContextLifecycleStateEnum] { [.creating, .active, .inactive, .updating, .needsAttention, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "UPDATING", "NEEDS_ATTENTION", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> BatchContextLifecycleStateEnum? { BatchContextLifecycleStateEnum(rawValue: value) }
}