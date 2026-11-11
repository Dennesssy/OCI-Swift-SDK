import Foundation

// MARK: - ServiceProviderLifecycleStateEnum

public enum ServiceProviderLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ServiceProviderLifecycleStateEnum {
    static var allValues: [ServiceProviderLifecycleStateEnum] { [.creating, .active, .updating, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ServiceProviderLifecycleStateEnum? { ServiceProviderLifecycleStateEnum(rawValue: value) }
}