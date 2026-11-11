import Foundation

// MARK: - LimitsIncreaseItemRequestLifecycleStateEnum

public enum LimitsIncreaseItemRequestLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case canceled = "CANCELED"
    case failed = "FAILED"
}

public extension LimitsIncreaseItemRequestLifecycleStateEnum {
    static var allValues: [LimitsIncreaseItemRequestLifecycleStateEnum] { [.accepted, .inProgress, .succeeded, .canceled, .failed] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "SUCCEEDED", "CANCELED", "FAILED"] }
    static func fromString(_ value: String) -> LimitsIncreaseItemRequestLifecycleStateEnum? { LimitsIncreaseItemRequestLifecycleStateEnum(rawValue: value) }
}