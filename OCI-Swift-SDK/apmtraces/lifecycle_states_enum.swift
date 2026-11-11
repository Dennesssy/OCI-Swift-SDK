import Foundation

// MARK: - LifecycleStatesEnum

public enum LifecycleStatesEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension LifecycleStatesEnum {
    static var allValues: [LifecycleStatesEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> LifecycleStatesEnum? { LifecycleStatesEnum(rawValue: value) }
}