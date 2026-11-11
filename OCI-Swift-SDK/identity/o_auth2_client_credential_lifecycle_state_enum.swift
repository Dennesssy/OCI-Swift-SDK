import Foundation

// MARK: - OAuth2ClientCredentialLifecycleStateEnum

public enum OAuth2ClientCredentialLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension OAuth2ClientCredentialLifecycleStateEnum {
    static var allValues: [OAuth2ClientCredentialLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> OAuth2ClientCredentialLifecycleStateEnum? { OAuth2ClientCredentialLifecycleStateEnum(rawValue: value) }
}