import Foundation

// MARK: - TagLifecycleStateEnum

public enum TagLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension TagLifecycleStateEnum {
    static var allValues: [TagLifecycleStateEnum] { [.active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> TagLifecycleStateEnum? { TagLifecycleStateEnum(rawValue: value) }
}