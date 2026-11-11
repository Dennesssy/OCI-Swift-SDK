import Foundation

// MARK: - IotFlowRuntimeLifecycleStateEnum

public enum IotFlowRuntimeLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension IotFlowRuntimeLifecycleStateEnum {
    static var allValues: [IotFlowRuntimeLifecycleStateEnum] { [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> IotFlowRuntimeLifecycleStateEnum? { IotFlowRuntimeLifecycleStateEnum(rawValue: value) }
}