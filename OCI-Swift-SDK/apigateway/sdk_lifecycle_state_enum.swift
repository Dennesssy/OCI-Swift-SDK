import Foundation

// MARK: - SdkLifecycleStateEnum

public enum SdkLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case failed = "FAILED"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension SdkLifecycleStateEnum {
    static var allValues: [SdkLifecycleStateEnum] { [.creating, .active, .failed, .deleting, .deleted] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "FAILED", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> SdkLifecycleStateEnum? { SdkLifecycleStateEnum(rawValue: value) }
}