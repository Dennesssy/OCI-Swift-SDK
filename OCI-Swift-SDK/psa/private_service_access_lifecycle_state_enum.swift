import Foundation

// MARK: - PrivateServiceAccessLifecycleStateEnum

public enum PrivateServiceAccessLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension PrivateServiceAccessLifecycleStateEnum {
    static var allValues: [PrivateServiceAccessLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> PrivateServiceAccessLifecycleStateEnum? { PrivateServiceAccessLifecycleStateEnum(rawValue: value) }
}