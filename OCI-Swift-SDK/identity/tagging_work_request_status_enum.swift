import Foundation

// MARK: - TaggingWorkRequestStatusEnum

public enum TaggingWorkRequestStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case partiallySucceeded = "PARTIALLY_SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension TaggingWorkRequestStatusEnum {
    static var allValues: [TaggingWorkRequestStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .partiallySucceeded, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "PARTIALLY_SUCCEEDED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> TaggingWorkRequestStatusEnum? { TaggingWorkRequestStatusEnum(rawValue: value) }
}