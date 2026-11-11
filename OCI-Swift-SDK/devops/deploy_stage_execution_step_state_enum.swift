import Foundation

// MARK: - DeployStageExecutionStepStateEnum

public enum DeployStageExecutionStepStateEnum: String, Codable, Sendable {
    case waiting = "WAITING"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceled = "CANCELED"
}

public extension DeployStageExecutionStepStateEnum {
    static var allValues: [DeployStageExecutionStepStateEnum] { [.waiting, .inProgress, .failed, .succeeded, .canceled] }
    static var allStringValues: [String] { ["WAITING", "IN_PROGRESS", "FAILED", "SUCCEEDED", "CANCELED"] }
    static func fromString(_ value: String) -> DeployStageExecutionStepStateEnum? { DeployStageExecutionStepStateEnum(rawValue: value) }
}