import Foundation

// MARK: - ResourceAnalyticsInstanceLifecycleStateEnum

public enum ResourceAnalyticsInstanceLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case needsAttention = "NEEDS_ATTENTION"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ResourceAnalyticsInstanceLifecycleStateEnum {
    static var allValues: [ResourceAnalyticsInstanceLifecycleStateEnum] { [.creating, .updating, .active, .needsAttention, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "NEEDS_ATTENTION", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ResourceAnalyticsInstanceLifecycleStateEnum? { ResourceAnalyticsInstanceLifecycleStateEnum(rawValue: value) }
}