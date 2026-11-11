import Foundation

// MARK: - InstanceLifecycleStateEnum

public enum InstanceLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension InstanceLifecycleStateEnum {
    static var allValues: [InstanceLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> InstanceLifecycleStateEnum? { InstanceLifecycleStateEnum(rawValue: value) }
}