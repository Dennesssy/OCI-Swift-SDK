import Foundation

// MARK: - SandboxLifecycleStateEnum

public enum SandboxLifecycleStateEnum: String, Codable, Sendable {
    case running = "RUNNING"
    case creating = "CREATING"
    case updating = "UPDATING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case suspending = "SUSPENDING"
    case suspended = "SUSPENDED"
    case resuming = "RESUMING"
    case stopping = "STOPPING"
    case stopped = "STOPPED"
}

public extension SandboxLifecycleStateEnum {
    static var allValues: [SandboxLifecycleStateEnum] { [.running, .creating, .updating, .deleted, .failed, .suspending, .suspended, .resuming, .stopping, .stopped] }
    static var allStringValues: [String] { ["RUNNING", "CREATING", "UPDATING", "DELETED", "FAILED", "SUSPENDING", "SUSPENDED", "RESUMING", "STOPPING", "STOPPED"] }
    static func fromString(_ value: String) -> SandboxLifecycleStateEnum? { SandboxLifecycleStateEnum(rawValue: value) }
}