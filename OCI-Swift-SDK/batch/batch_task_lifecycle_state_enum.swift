import Foundation

// MARK: - BatchTaskLifecycleStateEnum

public enum BatchTaskLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case waiting = "WAITING"
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case failed = "FAILED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension BatchTaskLifecycleStateEnum {
    static var allValues: [BatchTaskLifecycleStateEnum] { [.accepted, .waiting, .inProgress, .succeeded, .failed, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "WAITING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> BatchTaskLifecycleStateEnum? { BatchTaskLifecycleStateEnum(rawValue: value) }
}