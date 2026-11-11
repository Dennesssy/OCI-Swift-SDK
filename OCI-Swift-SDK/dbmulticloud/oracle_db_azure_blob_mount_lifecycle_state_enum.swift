import Foundation

// MARK: - OracleDbAzureBlobMountLifecycleStateEnum

public enum OracleDbAzureBlobMountLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbAzureBlobMountLifecycleStateEnum {
    static var allValues: [OracleDbAzureBlobMountLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbAzureBlobMountLifecycleStateEnum? { OracleDbAzureBlobMountLifecycleStateEnum(rawValue: value) }
}