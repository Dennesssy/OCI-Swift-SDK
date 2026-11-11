import Foundation

// MARK: - DeployPipelineLifecycleStateEnum

public enum DeployPipelineLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DeployPipelineLifecycleStateEnum {
    static var allValues: [DeployPipelineLifecycleStateEnum] { [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DeployPipelineLifecycleStateEnum? { DeployPipelineLifecycleStateEnum(rawValue: value) }
}