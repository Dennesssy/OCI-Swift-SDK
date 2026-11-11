import Foundation

// MARK: - OAuth2ClientCredentialSummaryLifecycleStateEnum

public enum OAuth2ClientCredentialSummaryLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension OAuth2ClientCredentialSummaryLifecycleStateEnum {
    static var allValues: [OAuth2ClientCredentialSummaryLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> OAuth2ClientCredentialSummaryLifecycleStateEnum? { OAuth2ClientCredentialSummaryLifecycleStateEnum(rawValue: value) }
}