import Foundation

// MARK: - DatabasesSummaryLifecycleStateEnum

public enum DatabasesSummaryLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension DatabasesSummaryLifecycleStateEnum {
    static var allValues: [DatabasesSummaryLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> DatabasesSummaryLifecycleStateEnum? { DatabasesSummaryLifecycleStateEnum(rawValue: value) }
}