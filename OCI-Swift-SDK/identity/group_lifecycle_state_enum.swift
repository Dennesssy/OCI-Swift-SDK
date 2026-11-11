import Foundation

// MARK: - GroupLifecycleStateEnum

public enum GroupLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension GroupLifecycleStateEnum {
    static var allValues: [GroupLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> GroupLifecycleStateEnum? { GroupLifecycleStateEnum(rawValue: value) }
}