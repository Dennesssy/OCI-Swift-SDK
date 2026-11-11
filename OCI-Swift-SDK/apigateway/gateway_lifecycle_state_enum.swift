import Foundation

// MARK: - GatewayLifecycleStateEnum

public enum GatewayLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension GatewayLifecycleStateEnum {
    static var allValues: [GatewayLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> GatewayLifecycleStateEnum? { GatewayLifecycleStateEnum(rawValue: value) }
}