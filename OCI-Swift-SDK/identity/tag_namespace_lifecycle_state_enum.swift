import Foundation

// MARK: - TagNamespaceLifecycleStateEnum

public enum TagNamespaceLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension TagNamespaceLifecycleStateEnum {
    static var allValues: [TagNamespaceLifecycleStateEnum] { [.active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> TagNamespaceLifecycleStateEnum? { TagNamespaceLifecycleStateEnum(rawValue: value) }
}