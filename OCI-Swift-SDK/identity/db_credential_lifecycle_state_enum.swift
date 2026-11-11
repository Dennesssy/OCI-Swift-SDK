import Foundation

// MARK: - DbCredentialLifecycleStateEnum

public enum DbCredentialLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension DbCredentialLifecycleStateEnum {
    static var allValues: [DbCredentialLifecycleStateEnum] { [.creating, .active, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> DbCredentialLifecycleStateEnum? { DbCredentialLifecycleStateEnum(rawValue: value) }
}