import Foundation

// MARK: - WlsDomainLifecycleStateEnum

public enum WlsDomainLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case creating = "CREATING"
    case deleted = "DELETED"
    case deleting = "DELETING"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
    case updating = "UPDATING"
}

public extension WlsDomainLifecycleStateEnum {
    static var allValues: [WlsDomainLifecycleStateEnum] { [.active, .creating, .deleted, .deleting, .failed, .needsAttention, .updating] }
    static var allStringValues: [String] { ["ACTIVE", "CREATING", "DELETED", "DELETING", "FAILED", "NEEDS_ATTENTION", "UPDATING"] }
    static func fromString(_ value: String) -> WlsDomainLifecycleStateEnum? { WlsDomainLifecycleStateEnum(rawValue: value) }
}