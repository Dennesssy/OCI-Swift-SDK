import Foundation

// MARK: - DeploymentLifecycleStateEnum

public enum DeploymentLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DeploymentLifecycleStateEnum {
    static var allValues: [DeploymentLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DeploymentLifecycleStateEnum? { DeploymentLifecycleStateEnum(rawValue: value) }
}