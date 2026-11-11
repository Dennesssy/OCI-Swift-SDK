import Foundation

// MARK: - CustomerSecretKeySummaryLifecycleStateEnum

public enum CustomerSecretKeySummaryLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension CustomerSecretKeySummaryLifecycleStateEnum {
    static var allValues: [CustomerSecretKeySummaryLifecycleStateEnum] { [.creating, .active, .inactive, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "INACTIVE", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> CustomerSecretKeySummaryLifecycleStateEnum? { CustomerSecretKeySummaryLifecycleStateEnum(rawValue: value) }
}