import Foundation

// MARK: - BuildPipelineStageLifecycleStateEnum

public enum BuildPipelineStageLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension BuildPipelineStageLifecycleStateEnum {
    static var allValues: [BuildPipelineStageLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> BuildPipelineStageLifecycleStateEnum? { BuildPipelineStageLifecycleStateEnum(rawValue: value) }
}