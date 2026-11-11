import Foundation

// MARK: - SandboxSnapshotLifecycleStateEnum

public enum SandboxSnapshotLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case failed = "FAILED"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SandboxSnapshotLifecycleStateEnum {
    static var allValues: [SandboxSnapshotLifecycleStateEnum] { [.creating, .active, .failed, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "FAILED", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SandboxSnapshotLifecycleStateEnum? { SandboxSnapshotLifecycleStateEnum(rawValue: value) }
}