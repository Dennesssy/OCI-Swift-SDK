import Foundation

// MARK: - SwiftPasswordLifecycleStateEnum

public enum SwiftPasswordLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SwiftPasswordLifecycleStateEnum {
    static var allValues: [SwiftPasswordLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SwiftPasswordLifecycleStateEnum? { SwiftPasswordLifecycleStateEnum(rawValue: value) }
}