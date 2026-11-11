import Foundation

// MARK: - DynamicGroupLifecycleStateEnum

public enum DynamicGroupLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension DynamicGroupLifecycleStateEnum {
    static var allValues: [DynamicGroupLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> DynamicGroupLifecycleStateEnum? { DynamicGroupLifecycleStateEnum(rawValue: value) }
}