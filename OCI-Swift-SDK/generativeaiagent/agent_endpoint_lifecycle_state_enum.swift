import Foundation

// MARK: - AgentEndpointLifecycleStateEnum

public enum AgentEndpointLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension AgentEndpointLifecycleStateEnum {
    static var allValues: [AgentEndpointLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> AgentEndpointLifecycleStateEnum? { AgentEndpointLifecycleStateEnum(rawValue: value) }
}