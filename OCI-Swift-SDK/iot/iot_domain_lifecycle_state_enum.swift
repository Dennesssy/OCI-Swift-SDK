import Foundation

// MARK: - IotDomainLifecycleStateEnum

public enum IotDomainLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension IotDomainLifecycleStateEnum {
    static var allValues: [IotDomainLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> IotDomainLifecycleStateEnum? { IotDomainLifecycleStateEnum(rawValue: value) }
}