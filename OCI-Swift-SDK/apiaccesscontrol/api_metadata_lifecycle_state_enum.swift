import Foundation

// MARK: - ApiMetadataLifecycleStateEnum

public enum ApiMetadataLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}

public extension ApiMetadataLifecycleStateEnum {
    static var allValues: [ApiMetadataLifecycleStateEnum] { [.creating, .updating, .active, .deleting, .deleted, .failed] }
    static var allStringValues: [String] { ["CREATING", "UPDATING", "ACTIVE", "DELETING", "DELETED", "FAILED"] }
    static func fromString(_ value: String) -> ApiMetadataLifecycleStateEnum? { ApiMetadataLifecycleStateEnum(rawValue: value) }
}