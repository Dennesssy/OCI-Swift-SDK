import Foundation

// MARK: - OracleDbGcpIdentityConnectorLifecycleStateEnum

public enum OracleDbGcpIdentityConnectorLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbGcpIdentityConnectorLifecycleStateEnum {
    static var allValues: [OracleDbGcpIdentityConnectorLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbGcpIdentityConnectorLifecycleStateEnum? { OracleDbGcpIdentityConnectorLifecycleStateEnum(rawValue: value) }
}