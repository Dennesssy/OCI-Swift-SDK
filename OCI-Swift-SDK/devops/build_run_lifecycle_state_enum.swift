import Foundation

// MARK: - BuildRunLifecycleStateEnum

public enum BuildRunLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case deleting = "DELETING"
}

public extension BuildRunLifecycleStateEnum {
    static var allValues: [BuildRunLifecycleStateEnum] { [.accepted, .inProgress, .failed, .succeeded, .canceling, .canceled, .deleting] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED", "DELETING"] }
    static func fromString(_ value: String) -> BuildRunLifecycleStateEnum? { BuildRunLifecycleStateEnum(rawValue: value) }
}