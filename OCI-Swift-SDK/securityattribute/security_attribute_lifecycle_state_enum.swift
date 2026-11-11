import Foundation

// MARK: - SecurityAttributeLifecycleStateEnum

public enum SecurityAttributeLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SecurityAttributeLifecycleStateEnum {
    static var allValues: [SecurityAttributeLifecycleStateEnum] { [.active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SecurityAttributeLifecycleStateEnum? { SecurityAttributeLifecycleStateEnum(rawValue: value) }
}