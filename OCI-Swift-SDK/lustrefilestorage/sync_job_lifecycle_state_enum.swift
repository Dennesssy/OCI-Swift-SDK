import Foundation

// MARK: - SyncJobLifecycleStateEnum

public enum SyncJobLifecycleStateEnum: String, Codable, Sendable {
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case failed = "FAILED"
    case failing = "FAILING"
}

public extension SyncJobLifecycleStateEnum {
    static var allValues: [SyncJobLifecycleStateEnum] { [.inProgress, .succeeded, .canceling, .canceled, .failed, .failing] }
    static var allStringValues: [String] { ["IN_PROGRESS", "SUCCEEDED", "CANCELING", "CANCELED", "FAILED", "FAILING"] }
    static func fromString(_ value: String) -> SyncJobLifecycleStateEnum? { SyncJobLifecycleStateEnum(rawValue: value) }
}