import Foundation

// MARK: - RepositoryMirrorRecordSummaryMirrorStatusEnum

public enum RepositoryMirrorRecordSummaryMirrorStatusEnum: String, Codable, Sendable {
    case none = "NONE"
    case queued = "QUEUED"
    case running = "RUNNING"
    case passed = "PASSED"
    case failed = "FAILED"
}

public extension RepositoryMirrorRecordSummaryMirrorStatusEnum {
    static var allValues: [RepositoryMirrorRecordSummaryMirrorStatusEnum] { [.none, .queued, .running, .passed, .failed] }
    static var allStringValues: [String] { ["NONE", "QUEUED", "RUNNING", "PASSED", "FAILED"] }
    static func fromString(_ value: String) -> RepositoryMirrorRecordSummaryMirrorStatusEnum? { RepositoryMirrorRecordSummaryMirrorStatusEnum(rawValue: value) }
}