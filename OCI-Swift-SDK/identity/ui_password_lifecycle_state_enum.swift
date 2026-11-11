import Foundation

// MARK: - UiPasswordLifecycleStateEnum

public enum UiPasswordLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension UiPasswordLifecycleStateEnum {
    static var allValues: [UiPasswordLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> UiPasswordLifecycleStateEnum? { UiPasswordLifecycleStateEnum(rawValue: value) }
}