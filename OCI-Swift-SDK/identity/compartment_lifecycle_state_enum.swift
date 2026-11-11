import Foundation

// MARK: - CompartmentLifecycleStateEnum

public enum CompartmentLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension CompartmentLifecycleStateEnum {
    static var allValues: [CompartmentLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> CompartmentLifecycleStateEnum? { CompartmentLifecycleStateEnum(rawValue: value) }
}