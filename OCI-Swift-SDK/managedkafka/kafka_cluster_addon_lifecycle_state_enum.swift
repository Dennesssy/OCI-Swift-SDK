import Foundation

// MARK: - KafkaClusterAddonLifecycleStateEnum

public enum KafkaClusterAddonLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension KafkaClusterAddonLifecycleStateEnum {
    static var allValues: [KafkaClusterAddonLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> KafkaClusterAddonLifecycleStateEnum? { KafkaClusterAddonLifecycleStateEnum(rawValue: value) }
}