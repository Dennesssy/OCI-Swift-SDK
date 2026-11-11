import Foundation

// MARK: - IdentityProviderLifecycleStateEnum

public enum IdentityProviderLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension IdentityProviderLifecycleStateEnum {
    static var allValues: [IdentityProviderLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> IdentityProviderLifecycleStateEnum? { IdentityProviderLifecycleStateEnum(rawValue: value) }
}