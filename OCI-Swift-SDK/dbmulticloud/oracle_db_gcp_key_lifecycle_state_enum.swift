import Foundation

// MARK: - OracleDbGcpKeyLifecycleStateEnum

public enum OracleDbGcpKeyLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbGcpKeyLifecycleStateEnum {
    static var allValues: [OracleDbGcpKeyLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbGcpKeyLifecycleStateEnum? { OracleDbGcpKeyLifecycleStateEnum(rawValue: value) }
}