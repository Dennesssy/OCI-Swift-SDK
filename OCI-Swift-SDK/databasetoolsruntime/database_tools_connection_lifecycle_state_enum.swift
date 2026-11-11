import Foundation

// MARK: - DatabaseToolsConnectionLifecycleStateEnum

public enum DatabaseToolsConnectionLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DatabaseToolsConnectionLifecycleStateEnum {
    static var allValues: [DatabaseToolsConnectionLifecycleStateEnum] { [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DatabaseToolsConnectionLifecycleStateEnum? { DatabaseToolsConnectionLifecycleStateEnum(rawValue: value) }
}