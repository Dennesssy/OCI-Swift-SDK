import Foundation

// MARK: - SmtpCredentialSummaryLifecycleStateEnum

public enum SmtpCredentialSummaryLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SmtpCredentialSummaryLifecycleStateEnum {
    static var allValues: [SmtpCredentialSummaryLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SmtpCredentialSummaryLifecycleStateEnum? { SmtpCredentialSummaryLifecycleStateEnum(rawValue: value) }
}