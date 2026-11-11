import Foundation

// MARK: - WorkItemStatusEnum

public enum WorkItemStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case succeeded = "SUCCEEDED"
    case needsAttention = "NEEDS_ATTENTION"
    case retrying = "RETRYING"
    case skipped = "SKIPPED"
}

public extension WorkItemStatusEnum {
    static var allValues: [WorkItemStatusEnum] { [.accepted, .inProgress, .canceling, .canceled, .succeeded, .needsAttention, .retrying, .skipped] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "CANCELING", "CANCELED", "SUCCEEDED", "NEEDS_ATTENTION", "RETRYING", "SKIPPED"] }
    static func fromString(_ value: String) -> WorkItemStatusEnum? { WorkItemStatusEnum(rawValue: value) }
}