import Foundation

// MARK: - DeployStageExecutionProgressStatusEnum

public enum DeployStageExecutionProgressStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case rollbackInProgress = "ROLLBACK_IN_PROGRESS"
    case rollbackSucceeded = "ROLLBACK_SUCCEEDED"
    case rollbackFailed = "ROLLBACK_FAILED"
}

public extension DeployStageExecutionProgressStatusEnum {
    static var allValues: [DeployStageExecutionProgressStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .canceling, .canceled, .rollbackInProgress, .rollbackSucceeded, .rollbackFailed] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_SUCCEEDED", "ROLLBACK_FAILED"] }
    static func fromString(_ value: String) -> DeployStageExecutionProgressStatusEnum? { DeployStageExecutionProgressStatusEnum(rawValue: value) }
}