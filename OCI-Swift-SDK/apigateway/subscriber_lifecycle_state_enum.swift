import Foundation

// MARK: - SubscriberLifecycleStateEnum

public enum SubscriberLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension SubscriberLifecycleStateEnum {
    static var allValues: [SubscriberLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> SubscriberLifecycleStateEnum? { SubscriberLifecycleStateEnum(rawValue: value) }
}