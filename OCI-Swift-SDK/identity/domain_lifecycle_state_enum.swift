import Foundation

// MARK: - DomainLifecycleStateEnum

public enum DomainLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case inactive = "INACTIVE"
}

public extension DomainLifecycleStateEnum {
    static var allValues: [DomainLifecycleStateEnum] { [.creating, .active, .deleting, .inactive] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "DELETING", "INACTIVE"] }
    static func fromString(_ value: String) -> DomainLifecycleStateEnum? { DomainLifecycleStateEnum(rawValue: value) }
}