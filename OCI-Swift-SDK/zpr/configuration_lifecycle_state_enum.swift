import Foundation

// MARK: - ConfigurationLifecycleStateEnum

public enum ConfigurationLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case creating = "CREATING"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ConfigurationLifecycleStateEnum {
    static var allValues: [ConfigurationLifecycleStateEnum] { [.active, .creating, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["ACTIVE", "CREATING", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ConfigurationLifecycleStateEnum? { ConfigurationLifecycleStateEnum(rawValue: value) }
}