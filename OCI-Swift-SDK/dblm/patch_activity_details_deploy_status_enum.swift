import Foundation

// MARK: - PatchActivityDetailsDeployStatusEnum

public enum PatchActivityDetailsDeployStatusEnum: String, Codable, Sendable {
    case scheduled = "SCHEDULED"
    case running = "RUNNING"
    case completed = "COMPLETED"
    case failed = "FAILED"
}

public extension PatchActivityDetailsDeployStatusEnum {
    static var allValues: [PatchActivityDetailsDeployStatusEnum] { [.scheduled, .running, .completed, .failed] }
    static var allStringValues: [String] { ["SCHEDULED", "RUNNING", "COMPLETED", "FAILED"] }
    static func fromString(_ value: String) -> PatchActivityDetailsDeployStatusEnum? { PatchActivityDetailsDeployStatusEnum(rawValue: value) }
}