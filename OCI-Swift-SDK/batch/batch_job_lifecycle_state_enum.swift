import Foundation

// MARK: - BatchJobLifecycleStateEnum

public enum BatchJobLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case waiting = "WAITING"
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case needsAttention = "NEEDS_ATTENTION"
    case failed = "FAILED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension BatchJobLifecycleStateEnum {
    static var allValues: [BatchJobLifecycleStateEnum] { [.accepted, .waiting, .inProgress, .succeeded, .needsAttention, .failed, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "WAITING", "IN_PROGRESS", "SUCCEEDED", "NEEDS_ATTENTION", "FAILED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> BatchJobLifecycleStateEnum? { BatchJobLifecycleStateEnum(rawValue: value) }
}