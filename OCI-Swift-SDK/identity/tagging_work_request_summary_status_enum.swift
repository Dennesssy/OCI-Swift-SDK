import Foundation

// MARK: - TaggingWorkRequestSummaryStatusEnum

public enum TaggingWorkRequestSummaryStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case partiallySucceeded = "PARTIALLY_SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension TaggingWorkRequestSummaryStatusEnum {
    static var allValues: [TaggingWorkRequestSummaryStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .partiallySucceeded, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "PARTIALLY_SUCCEEDED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> TaggingWorkRequestSummaryStatusEnum? { TaggingWorkRequestSummaryStatusEnum(rawValue: value) }
}