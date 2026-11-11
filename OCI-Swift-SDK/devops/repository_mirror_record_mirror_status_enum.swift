import Foundation

// MARK: - RepositoryMirrorRecordMirrorStatusEnum

public enum RepositoryMirrorRecordMirrorStatusEnum: String, Codable, Sendable {
    case none = "NONE"
    case queued = "QUEUED"
    case running = "RUNNING"
    case passed = "PASSED"
    case failed = "FAILED"
}

public extension RepositoryMirrorRecordMirrorStatusEnum {
    static var allValues: [RepositoryMirrorRecordMirrorStatusEnum] { [.none, .queued, .running, .passed, .failed] }
    static var allStringValues: [String] { ["NONE", "QUEUED", "RUNNING", "PASSED", "FAILED"] }
    static func fromString(_ value: String) -> RepositoryMirrorRecordMirrorStatusEnum? { RepositoryMirrorRecordMirrorStatusEnum(rawValue: value) }
}