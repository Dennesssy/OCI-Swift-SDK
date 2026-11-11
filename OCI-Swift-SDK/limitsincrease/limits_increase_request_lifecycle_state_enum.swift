import Foundation

// MARK: - LimitsIncreaseRequestLifecycleStateEnum

public enum LimitsIncreaseRequestLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case canceled = "CANCELED"
    case partiallySucceeded = "PARTIALLY_SUCCEEDED"
    case failed = "FAILED"
}

public extension LimitsIncreaseRequestLifecycleStateEnum {
    static var allValues: [LimitsIncreaseRequestLifecycleStateEnum] { [.accepted, .inProgress, .succeeded, .canceled, .partiallySucceeded, .failed] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "SUCCEEDED", "CANCELED", "PARTIALLY_SUCCEEDED", "FAILED"] }
    static func fromString(_ value: String) -> LimitsIncreaseRequestLifecycleStateEnum? { LimitsIncreaseRequestLifecycleStateEnum(rawValue: value) }
}