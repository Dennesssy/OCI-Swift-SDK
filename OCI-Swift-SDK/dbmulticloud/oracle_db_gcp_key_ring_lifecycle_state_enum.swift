import Foundation

// MARK: - OracleDbGcpKeyRingLifecycleStateEnum

public enum OracleDbGcpKeyRingLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbGcpKeyRingLifecycleStateEnum {
    static var allValues: [OracleDbGcpKeyRingLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbGcpKeyRingLifecycleStateEnum? { OracleDbGcpKeyRingLifecycleStateEnum(rawValue: value) }
}