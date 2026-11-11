import Foundation

// MARK: - ApiKeyLifecycleStateEnum

public enum ApiKeyLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension ApiKeyLifecycleStateEnum {
    static var allValues: [ApiKeyLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> ApiKeyLifecycleStateEnum? { ApiKeyLifecycleStateEnum(rawValue: value) }
}