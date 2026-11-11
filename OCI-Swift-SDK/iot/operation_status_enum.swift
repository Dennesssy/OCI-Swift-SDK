import Foundation

// MARK: - OperationStatusEnum

public enum OperationStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case needsAttention = "NEEDS_ATTENTION"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
}

public extension OperationStatusEnum {
    static var allValues: [OperationStatusEnum] { [.accepted, .inProgress, .waiting, .needsAttention, .failed, .succeeded] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "NEEDS_ATTENTION", "FAILED", "SUCCEEDED"] }
    static func fromString(_ value: String) -> OperationStatusEnum? { OperationStatusEnum(rawValue: value) }
}