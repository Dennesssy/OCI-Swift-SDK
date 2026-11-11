import Foundation

// MARK: - GdpPipelineLifecycleStateEnum

public enum GdpPipelineLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension GdpPipelineLifecycleStateEnum {
    static var allValues: [GdpPipelineLifecycleStateEnum] { [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed, .needsAttention] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> GdpPipelineLifecycleStateEnum? { GdpPipelineLifecycleStateEnum(rawValue: value) }
}