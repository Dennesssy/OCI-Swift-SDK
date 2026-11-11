import Foundation

// MARK: - FppServerLifecycleStateEnum

public enum FppServerLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension FppServerLifecycleStateEnum {
    static var allValues: [FppServerLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> FppServerLifecycleStateEnum? { FppServerLifecycleStateEnum(rawValue: value) }
}