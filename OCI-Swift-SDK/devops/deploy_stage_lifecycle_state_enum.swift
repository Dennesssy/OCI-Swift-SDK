import Foundation

// MARK: - DeployStageLifecycleStateEnum

public enum DeployStageLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DeployStageLifecycleStateEnum {
    static var allValues: [DeployStageLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DeployStageLifecycleStateEnum? { DeployStageLifecycleStateEnum(rawValue: value) }
}