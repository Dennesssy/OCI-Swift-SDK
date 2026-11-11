import Foundation

// MARK: - ConflictMergeCheckStatusEnum

public enum ConflictMergeCheckStatusEnum: String, Codable, Sendable {
    case succeeded = "SUCCEEDED"
    case failed = "FAILED"
}

public extension ConflictMergeCheckStatusEnum {
    static var allValues: [ConflictMergeCheckStatusEnum] { [.succeeded, .failed] }
    static var allStringValues: [String] { ["SUCCEEDED", "FAILED"] }
    static func fromString(_ value: String) -> ConflictMergeCheckStatusEnum? { ConflictMergeCheckStatusEnum(rawValue: value) }
}