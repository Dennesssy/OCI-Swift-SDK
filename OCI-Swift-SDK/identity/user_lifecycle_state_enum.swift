import Foundation

// MARK: - UserLifecycleStateEnum

public enum UserLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension UserLifecycleStateEnum {
    static var allValues: [UserLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> UserLifecycleStateEnum? { UserLifecycleStateEnum(rawValue: value) }
}