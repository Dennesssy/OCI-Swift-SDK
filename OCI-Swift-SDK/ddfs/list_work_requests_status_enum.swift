import Foundation

// MARK: - ListWorkRequestsStatusEnum

public enum ListWorkRequestsStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case needsAttention = "NEEDS_ATTENTION"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case cancelling = "CANCELLING"
    case cancelled = "CANCELLED"
}

public extension ListWorkRequestsStatusEnum {
    static var allValues: [ListWorkRequestsStatusEnum] { [.accepted, .inProgress, .waiting, .needsAttention, .failed, .succeeded, .cancelling, .cancelled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "NEEDS_ATTENTION", "FAILED", "SUCCEEDED", "CANCELLING", "CANCELLED"] }
    static func fromString(_ value: String) -> ListWorkRequestsStatusEnum? { ListWorkRequestsStatusEnum(rawValue: value) }
}