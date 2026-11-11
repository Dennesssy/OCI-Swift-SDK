import Foundation

// MARK: - ApiPlatformInstanceLifecycleStateEnum

public enum ApiPlatformInstanceLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ApiPlatformInstanceLifecycleStateEnum {
    static var allValues: [ApiPlatformInstanceLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ApiPlatformInstanceLifecycleStateEnum? { ApiPlatformInstanceLifecycleStateEnum(rawValue: value) }
}