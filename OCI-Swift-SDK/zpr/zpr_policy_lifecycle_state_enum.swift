import Foundation

// MARK: - ZprPolicyLifecycleStateEnum

public enum ZprPolicyLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case creating = "CREATING"
    case failed = "FAILED"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension ZprPolicyLifecycleStateEnum {
    static var allValues: [ZprPolicyLifecycleStateEnum] { [.active, .creating, .failed, .updating, .deleting, .deleted, .needsAttention] }
    static var allStringValues: [String] { ["ACTIVE", "CREATING", "FAILED", "UPDATING", "DELETING", "DELETED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> ZprPolicyLifecycleStateEnum? { ZprPolicyLifecycleStateEnum(rawValue: value) }
}