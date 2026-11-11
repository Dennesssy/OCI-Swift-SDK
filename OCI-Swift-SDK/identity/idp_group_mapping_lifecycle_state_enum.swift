import Foundation

// MARK: - IdpGroupMappingLifecycleStateEnum

public enum IdpGroupMappingLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension IdpGroupMappingLifecycleStateEnum {
    static var allValues: [IdpGroupMappingLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> IdpGroupMappingLifecycleStateEnum? { IdpGroupMappingLifecycleStateEnum(rawValue: value) }
}