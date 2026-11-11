import Foundation

// MARK: - PolicyLifecycleStateEnum

public enum PolicyLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension PolicyLifecycleStateEnum {
    static var allValues: [PolicyLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> PolicyLifecycleStateEnum? { PolicyLifecycleStateEnum(rawValue: value) }
}