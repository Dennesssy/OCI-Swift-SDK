import Foundation

// MARK: - SecurityAttributeNamespaceLifecycleStateEnum

public enum SecurityAttributeNamespaceLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SecurityAttributeNamespaceLifecycleStateEnum {
    static var allValues: [SecurityAttributeNamespaceLifecycleStateEnum] { [.active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SecurityAttributeNamespaceLifecycleStateEnum? { SecurityAttributeNamespaceLifecycleStateEnum(rawValue: value) }
}