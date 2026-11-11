import Foundation

// MARK: - AiDataPlatformLifecycleStateEnum

public enum AiDataPlatformLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension AiDataPlatformLifecycleStateEnum {
    static var allValues: [AiDataPlatformLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> AiDataPlatformLifecycleStateEnum? { AiDataPlatformLifecycleStateEnum(rawValue: value) }
}