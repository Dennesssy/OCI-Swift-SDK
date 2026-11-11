import Foundation

// MARK: - ToolLifecycleStateEnum

public enum ToolLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ToolLifecycleStateEnum {
    static var allValues: [ToolLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ToolLifecycleStateEnum? { ToolLifecycleStateEnum(rawValue: value) }
}