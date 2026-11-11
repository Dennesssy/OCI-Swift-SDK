import Foundation

// MARK: - TenancyAttachmentLifecycleStateEnum

public enum TenancyAttachmentLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case needsAttention = "NEEDS_ATTENTION"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension TenancyAttachmentLifecycleStateEnum {
    static var allValues: [TenancyAttachmentLifecycleStateEnum] { [.creating, .updating, .active, .needsAttention, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "NEEDS_ATTENTION", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> TenancyAttachmentLifecycleStateEnum? { TenancyAttachmentLifecycleStateEnum(rawValue: value) }
}