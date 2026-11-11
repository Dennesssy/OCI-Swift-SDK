import Foundation

// MARK: - WorkRequestStatusEnum

public enum WorkRequestStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case partiallySucceeded = "PARTIALLY_SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension WorkRequestStatusEnum {
    static var allValues: [WorkRequestStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .partiallySucceeded, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "PARTIALLY_SUCCEEDED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> WorkRequestStatusEnum? { WorkRequestStatusEnum(rawValue: value) }
}