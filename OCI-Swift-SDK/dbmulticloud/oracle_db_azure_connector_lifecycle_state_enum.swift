import Foundation

// MARK: - OracleDbAzureConnectorLifecycleStateEnum

public enum OracleDbAzureConnectorLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbAzureConnectorLifecycleStateEnum {
    static var allValues: [OracleDbAzureConnectorLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbAzureConnectorLifecycleStateEnum? { OracleDbAzureConnectorLifecycleStateEnum(rawValue: value) }
}