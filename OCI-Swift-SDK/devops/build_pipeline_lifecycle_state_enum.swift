import Foundation

// MARK: - BuildPipelineLifecycleStateEnum

public enum BuildPipelineLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension BuildPipelineLifecycleStateEnum {
    static var allValues: [BuildPipelineLifecycleStateEnum] { [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> BuildPipelineLifecycleStateEnum? { BuildPipelineLifecycleStateEnum(rawValue: value) }
}