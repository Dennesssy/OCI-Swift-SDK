import Foundation

// MARK: - VmInstanceLifecycleStateEnum

public enum VmInstanceLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension VmInstanceLifecycleStateEnum {
    static var allValues: [VmInstanceLifecycleStateEnum] { [.creating, .active, .inactive, .updating, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "UPDATING", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> VmInstanceLifecycleStateEnum? { VmInstanceLifecycleStateEnum(rawValue: value) }
}