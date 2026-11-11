import Foundation

// MARK: - DblmPatchManagementLifecycleStateEnum

public enum DblmPatchManagementLifecycleStateEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case failed = "FAILED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension DblmPatchManagementLifecycleStateEnum {
    static var allValues: [DblmPatchManagementLifecycleStateEnum] { [.creating, .active, .failed, .needsAttention] }
    static var allStringValues: [String] { ["CREATING", "ACTIVE", "FAILED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> DblmPatchManagementLifecycleStateEnum? { DblmPatchManagementLifecycleStateEnum(rawValue: value) }
}