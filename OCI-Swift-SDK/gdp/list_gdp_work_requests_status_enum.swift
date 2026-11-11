import Foundation

// MARK: - ListGdpWorkRequestsStatusEnum

public enum ListGdpWorkRequestsStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case needsAttention = "NEEDS_ATTENTION"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension ListGdpWorkRequestsStatusEnum {
    static var allValues: [ListGdpWorkRequestsStatusEnum] { [.accepted, .inProgress, .waiting, .needsAttention, .failed, .succeeded, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "NEEDS_ATTENTION", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> ListGdpWorkRequestsStatusEnum? { ListGdpWorkRequestsStatusEnum(rawValue: value) }
}