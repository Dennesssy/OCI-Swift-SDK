import Foundation

// MARK: - ResourceAnchorLifecycleStateEnum

public enum ResourceAnchorLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ResourceAnchorLifecycleStateEnum {
    static var allValues: [ResourceAnchorLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ResourceAnchorLifecycleStateEnum? { ResourceAnchorLifecycleStateEnum(rawValue: value) }
}