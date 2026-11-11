import Foundation

// MARK: - ReplicatedRegionDetailsStateEnum

public enum ReplicatedRegionDetailsStateEnum: String, Codable, Sendable {
    case enablingReplication = "ENABLING_REPLICATION"
    case replicationEnabled = "REPLICATION_ENABLED"
    case disablingReplication = "DISABLING_REPLICATION"
    case replicationDisabled = "REPLICATION_DISABLED"
    case deleted = "DELETED"
}

public extension ReplicatedRegionDetailsStateEnum {
    static var allValues: [ReplicatedRegionDetailsStateEnum] { [.enablingReplication, .replicationEnabled, .disablingReplication, .replicationDisabled, .deleted] }
    static var allStringValues: [String] { ["ENABLING_REPLICATION", "REPLICATION_ENABLED", "DISABLING_REPLICATION", "REPLICATION_DISABLED", "DELETED"] }
    static func fromString(_ value: String) -> ReplicatedRegionDetailsStateEnum? { ReplicatedRegionDetailsStateEnum(rawValue: value) }
}