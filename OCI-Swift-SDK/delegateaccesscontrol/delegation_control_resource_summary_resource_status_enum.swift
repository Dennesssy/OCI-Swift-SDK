import Foundation

// MARK: - DelegationControlResourceSummaryResourceStatusEnum

public enum DelegationControlResourceSummaryResourceStatusEnum: String, Codable, Sendable {
    case created = "CREATED"
    case applying = "APPLYING"
    case applied = "APPLIED"
    case applyFailed = "APPLY_FAILED"
    case updating = "UPDATING"
    case updateFailed = "UPDATE_FAILED"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case deletionFailed = "DELETION_FAILED"
}

public extension DelegationControlResourceSummaryResourceStatusEnum {
    static var allValues: [DelegationControlResourceSummaryResourceStatusEnum] { [.created, .applying, .applied, .applyFailed, .updating, .updateFailed, .deleting, .deleted, .deletionFailed] }
    static var allStringValues: [String] { ["CREATED", "APPLYING", "APPLIED", "APPLY_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED", "DELETION_FAILED"] }
    static func fromString(_ value: String) -> DelegationControlResourceSummaryResourceStatusEnum? { DelegationControlResourceSummaryResourceStatusEnum(rawValue: value) }
}