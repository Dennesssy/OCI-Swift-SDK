import Foundation

// MARK: - AgentLifecycleStateEnum

public enum AgentLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension AgentLifecycleStateEnum {
    static var allValues: [AgentLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> AgentLifecycleStateEnum? { AgentLifecycleStateEnum(rawValue: value) }
}