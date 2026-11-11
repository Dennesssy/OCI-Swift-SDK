import Foundation

// MARK: - KafkaClusterConfigLifecycleStateEnum

public enum KafkaClusterConfigLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleted = "DELETED"
}

public extension KafkaClusterConfigLifecycleStateEnum {
    static var allValues: [KafkaClusterConfigLifecycleStateEnum] { [.creating, .active, .updating, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETED"] }
    static func fromString(_ value: String) -> KafkaClusterConfigLifecycleStateEnum? { KafkaClusterConfigLifecycleStateEnum(rawValue: value) }
}