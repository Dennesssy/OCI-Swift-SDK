import Foundation

// MARK: - OracleDbAzureVaultAssociationLifecycleStateEnum

public enum OracleDbAzureVaultAssociationLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension OracleDbAzureVaultAssociationLifecycleStateEnum {
    static var allValues: [OracleDbAzureVaultAssociationLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> OracleDbAzureVaultAssociationLifecycleStateEnum? { OracleDbAzureVaultAssociationLifecycleStateEnum(rawValue: value) }
}