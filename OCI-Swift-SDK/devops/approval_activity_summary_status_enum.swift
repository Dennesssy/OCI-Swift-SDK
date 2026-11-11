import Foundation

// MARK: - ApprovalActivitySummaryStatusEnum

public enum ApprovalActivitySummaryStatusEnum: String, Codable, Sendable {
    case approved = "APPROVED"
    case unapproved = "UNAPPROVED"
}

public extension ApprovalActivitySummaryStatusEnum {
    static var allValues: [ApprovalActivitySummaryStatusEnum] { [.approved, .unapproved] }
    static var allStringValues: [String] { ["APPROVED", "UNAPPROVED"] }
    static func fromString(_ value: String) -> ApprovalActivitySummaryStatusEnum? { ApprovalActivitySummaryStatusEnum(rawValue: value) }
}