import Foundation

// MARK: - TenancyAttachmentDataPopulationStatusEnum

public enum TenancyAttachmentDataPopulationStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case waiting = "WAITING"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
    case needsAttention = "NEEDS_ATTENTION"
    case partiallySucceeded = "PARTIALLY_SUCCEEDED"
}

public extension TenancyAttachmentDataPopulationStatusEnum {
    static var allValues: [TenancyAttachmentDataPopulationStatusEnum] { [.accepted, .inProgress, .waiting, .failed, .succeeded, .canceling, .canceled, .needsAttention, .partiallySucceeded] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "WAITING", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED", "NEEDS_ATTENTION", "PARTIALLY_SUCCEEDED"] }
    static func fromString(_ value: String) -> TenancyAttachmentDataPopulationStatusEnum? { TenancyAttachmentDataPopulationStatusEnum(rawValue: value) }
}