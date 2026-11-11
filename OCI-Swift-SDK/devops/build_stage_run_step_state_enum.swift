import Foundation

// MARK: - BuildStageRunStepStateEnum

public enum BuildStageRunStepStateEnum: String, Codable, Sendable {
    case waiting = "WAITING"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
}

public extension BuildStageRunStepStateEnum {
    static var allValues: [BuildStageRunStepStateEnum] { [.waiting, .inProgress, .failed, .succeeded] }
    static var allStringValues: [String] { ["WAITING", "IN_PROGRESS", "FAILED", "SUCCEEDED"] }
    static func fromString(_ value: String) -> BuildStageRunStepStateEnum? { BuildStageRunStepStateEnum(rawValue: value) }
}