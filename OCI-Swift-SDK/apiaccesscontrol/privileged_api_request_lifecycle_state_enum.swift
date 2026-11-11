import Foundation

// MARK: - PrivilegedApiRequestLifecycleStateEnum

public enum PrivilegedApiRequestLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension PrivilegedApiRequestLifecycleStateEnum {
    static var allValues: [PrivilegedApiRequestLifecycleStateEnum] { [.accepted, .inProgress, .waiting, .failed, .succeeded, .canceling, .canceled, .needsAttention] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> PrivilegedApiRequestLifecycleStateEnum? { PrivilegedApiRequestLifecycleStateEnum(rawValue: value) }
}