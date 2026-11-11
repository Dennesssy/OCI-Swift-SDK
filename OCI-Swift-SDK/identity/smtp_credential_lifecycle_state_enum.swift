import Foundation

// MARK: - SmtpCredentialLifecycleStateEnum

public enum SmtpCredentialLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SmtpCredentialLifecycleStateEnum {
    static var allValues: [SmtpCredentialLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SmtpCredentialLifecycleStateEnum? { SmtpCredentialLifecycleStateEnum(rawValue: value) }
}