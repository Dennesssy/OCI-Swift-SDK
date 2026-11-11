import Foundation

// MARK: - DataSourceLifecycleStateEnum

public enum DataSourceLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DataSourceLifecycleStateEnum {
    static var allValues: [DataSourceLifecycleStateEnum] { [.creating, .active, .inactive, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DataSourceLifecycleStateEnum? { DataSourceLifecycleStateEnum(rawValue: value) }
}