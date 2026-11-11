import Foundation

// MARK: - MulticloudPolicyLifecycleStateEnum

public enum MulticloudPolicyLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension MulticloudPolicyLifecycleStateEnum {
    static var allValues: [MulticloudPolicyLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> MulticloudPolicyLifecycleStateEnum? { MulticloudPolicyLifecycleStateEnum(rawValue: value) }
}