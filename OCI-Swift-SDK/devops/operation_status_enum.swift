import Foundation

// MARK: - OperationStatusEnum

public enum OperationStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case waiting = "WAITING"
    case needsAttention = "NEEDS_ATTENTION"
}

public extension OperationStatusEnum {
    static var allValues: [OperationStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .canceling, .canceled, .waiting, .needsAttention] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED", "WAITING", "NEEDS_ATTENTION"] }
    static func fromString(_ value: String) -> OperationStatusEnum? { OperationStatusEnum(rawValue: value) }
}