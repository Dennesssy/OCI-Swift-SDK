import Foundation

// MARK: - ListMaintenanceExecutionsLifecycleStateEnum

public enum ListMaintenanceExecutionsLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case scheduled = "SCHEDULED"
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case skipped = "SKIPPED"
    case failed = "FAILED"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case canceled = "CANCELED"
    case partialSuccess = "PARTIAL_SUCCESS"
}

public extension ListMaintenanceExecutionsLifecycleStateEnum {
    static var allValues: [ListMaintenanceExecutionsLifecycleStateEnum] { [.creating, .scheduled, .inProgress, .succeeded, .skipped, .failed, .updating, .deleting, .deleted, .canceled, .partialSuccess] }
    static var allStringValues: [String] { ["CREATING", "SCHEDULED", "IN_PROGRESS", "SUCCEEDED", "SKIPPED", "FAILED", "UPDATING", "DELETING", "DELETED", "CANCELED", "PARTIAL_SUCCESS"] }
    static func fromString(_ value: String) -> ListMaintenanceExecutionsLifecycleStateEnum? { ListMaintenanceExecutionsLifecycleStateEnum(rawValue: value) }
}