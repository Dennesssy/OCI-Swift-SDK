import Foundation

// MARK: - DataIngestionJobLifecycleStateEnum

public enum DataIngestionJobLifecycleStateEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case deleting = "DELETING"
    case deleted = "DELETED"
}

public extension DataIngestionJobLifecycleStateEnum {
    static var allValues: [DataIngestionJobLifecycleStateEnum] { [.accepted, .inProgress, .waiting, .failed, .succeeded, .deleting, .deleted] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "FAILED", "SUCCEEDED", "DELETING", "DELETED"] }
    static func fromString(_ value: String) -> DataIngestionJobLifecycleStateEnum? { DataIngestionJobLifecycleStateEnum(rawValue: value) }
}