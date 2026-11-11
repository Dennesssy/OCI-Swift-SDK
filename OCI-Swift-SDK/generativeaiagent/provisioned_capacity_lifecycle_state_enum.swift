import Foundation

// MARK: - ProvisionedCapacityLifecycleStateEnum

public enum ProvisionedCapacityLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ProvisionedCapacityLifecycleStateEnum {
    static var allValues: [ProvisionedCapacityLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ProvisionedCapacityLifecycleStateEnum? { ProvisionedCapacityLifecycleStateEnum(rawValue: value) }
}