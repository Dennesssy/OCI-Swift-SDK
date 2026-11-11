import Foundation

// MARK: - UserGroupMembershipLifecycleStateEnum

public enum UserGroupMembershipLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension UserGroupMembershipLifecycleStateEnum {
    static var allValues: [UserGroupMembershipLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> UserGroupMembershipLifecycleStateEnum? { UserGroupMembershipLifecycleStateEnum(rawValue: value) }
}