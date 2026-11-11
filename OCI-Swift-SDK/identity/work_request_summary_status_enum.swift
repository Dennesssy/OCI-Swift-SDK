import Foundation

// MARK: - WorkRequestSummaryStatusEnum

public enum WorkRequestSummaryStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension WorkRequestSummaryStatusEnum {
    static var allValues: [WorkRequestSummaryStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> WorkRequestSummaryStatusEnum? { WorkRequestSummaryStatusEnum(rawValue: value) }
}