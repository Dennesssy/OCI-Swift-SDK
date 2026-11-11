import Foundation

// MARK: - MulticloudAlertLifecycleStateEnum

public enum MulticloudAlertLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension MulticloudAlertLifecycleStateEnum {
    static var allValues: [MulticloudAlertLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> MulticloudAlertLifecycleStateEnum? { MulticloudAlertLifecycleStateEnum(rawValue: value) }
}