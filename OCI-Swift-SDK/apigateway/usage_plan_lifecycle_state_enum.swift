import Foundation

// MARK: - UsagePlanLifecycleStateEnum

public enum UsagePlanLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension UsagePlanLifecycleStateEnum {
    static var allValues: [UsagePlanLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> UsagePlanLifecycleStateEnum? { UsagePlanLifecycleStateEnum(rawValue: value) }
}