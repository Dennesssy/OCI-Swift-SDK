import Foundation

// MARK: - OracleDbAwsKeyPoolLifecycleStateEnum

public enum OracleDbAwsKeyPoolLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbAwsKeyPoolLifecycleStateEnum {
    static var allValues: [OracleDbAwsKeyPoolLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbAwsKeyPoolLifecycleStateEnum? { OracleDbAwsKeyPoolLifecycleStateEnum(rawValue: value) }
}