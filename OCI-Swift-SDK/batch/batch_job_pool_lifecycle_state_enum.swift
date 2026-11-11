import Foundation

// MARK: - BatchJobPoolLifecycleStateEnum

public enum BatchJobPoolLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case updating = "UPDATING"
    case needsAttention = "NEEDS_ATTENTION"
    case deleted = "DELETED"
}

public extension BatchJobPoolLifecycleStateEnum {
    static var allValues: [BatchJobPoolLifecycleStateEnum] { [.active, .inactive, .updating, .needsAttention, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "UPDATING", "NEEDS_ATTENTION", "DELETED"] }
    static func fromString(_ value: String) -> BatchJobPoolLifecycleStateEnum? { BatchJobPoolLifecycleStateEnum(rawValue: value) }
}