import Foundation

// MARK: - IotDomainGroupLifecycleStateEnum

public enum IotDomainGroupLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension IotDomainGroupLifecycleStateEnum {
    static var allValues: [IotDomainGroupLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> IotDomainGroupLifecycleStateEnum? { IotDomainGroupLifecycleStateEnum(rawValue: value) }
}