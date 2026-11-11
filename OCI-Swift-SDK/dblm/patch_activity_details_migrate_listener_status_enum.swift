import Foundation

// MARK: - PatchActivityDetailsMigrateListenerStatusEnum

public enum PatchActivityDetailsMigrateListenerStatusEnum: String, Codable, Sendable {
    case scheduled = "SCHEDULED"
    case running = "RUNNING"
    case completed = "COMPLETED"
    case failed = "FAILED"
    case na = "NA"
}

public extension PatchActivityDetailsMigrateListenerStatusEnum {
    static var allValues: [PatchActivityDetailsMigrateListenerStatusEnum] { [.scheduled, .running, .completed, .failed, .na] }
    static var allStringValues: [String] { ["SCHEDULED", "RUNNING", "COMPLETED", "FAILED", "NA"] }
    static func fromString(_ value: String) -> PatchActivityDetailsMigrateListenerStatusEnum? { PatchActivityDetailsMigrateListenerStatusEnum(rawValue: value) }
}