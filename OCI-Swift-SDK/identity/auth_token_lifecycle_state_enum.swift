import Foundation

// MARK: - AuthTokenLifecycleStateEnum

public enum AuthTokenLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension AuthTokenLifecycleStateEnum {
    static var allValues: [AuthTokenLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> AuthTokenLifecycleStateEnum? { AuthTokenLifecycleStateEnum(rawValue: value) }
}