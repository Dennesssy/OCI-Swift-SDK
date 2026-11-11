import Foundation

// MARK: - KafkaClusterLifecycleStateEnum

public enum KafkaClusterLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension KafkaClusterLifecycleStateEnum {
    static var allValues: [KafkaClusterLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> KafkaClusterLifecycleStateEnum? { KafkaClusterLifecycleStateEnum(rawValue: value) }
}