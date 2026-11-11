import Foundation

// MARK: - PatchActivityDetailsUpdateStatusEnum

public enum PatchActivityDetailsUpdateStatusEnum: String, Codable, Sendable {
    case scheduled = "SCHEDULED"
    case running = "RUNNING"
    case completed = "COMPLETED"
    case failed = "FAILED"
}

public extension PatchActivityDetailsUpdateStatusEnum {
    static var allValues: [PatchActivityDetailsUpdateStatusEnum] { [.scheduled, .running, .completed, .failed] }
    static var allStringValues: [String] { ["SCHEDULED", "RUNNING", "COMPLETED", "FAILED"] }
    static func fromString(_ value: String) -> PatchActivityDetailsUpdateStatusEnum? { PatchActivityDetailsUpdateStatusEnum(rawValue: value) }
}