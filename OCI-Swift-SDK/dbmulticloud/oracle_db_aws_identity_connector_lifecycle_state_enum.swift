import Foundation

// MARK: - OracleDbAwsIdentityConnectorLifecycleStateEnum

public enum OracleDbAwsIdentityConnectorLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbAwsIdentityConnectorLifecycleStateEnum {
    static var allValues: [OracleDbAwsIdentityConnectorLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbAwsIdentityConnectorLifecycleStateEnum? { OracleDbAwsIdentityConnectorLifecycleStateEnum(rawValue: value) }
}