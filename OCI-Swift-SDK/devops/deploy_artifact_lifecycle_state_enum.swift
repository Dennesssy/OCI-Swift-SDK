import Foundation

// MARK: - DeployArtifactLifecycleStateEnum

public enum DeployArtifactLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DeployArtifactLifecycleStateEnum {
    static var allValues: [DeployArtifactLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DeployArtifactLifecycleStateEnum? { DeployArtifactLifecycleStateEnum(rawValue: value) }
}