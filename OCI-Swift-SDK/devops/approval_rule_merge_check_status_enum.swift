import Foundation

// MARK: - ApprovalRuleMergeCheckStatusEnum

public enum ApprovalRuleMergeCheckStatusEnum: String, Codable, Sendable {
    case needsApproval = "NEEDS_APPROVAL"
    case succeeded = "SUCCEEDED"
}

public extension ApprovalRuleMergeCheckStatusEnum {
    static var allValues: [ApprovalRuleMergeCheckStatusEnum] { [.needsApproval, .succeeded] }
    static var allStringValues: [String] { ["NEEDS_APPROVAL", "SUCCEEDED"] }
    static func fromString(_ value: String) -> ApprovalRuleMergeCheckStatusEnum? { ApprovalRuleMergeCheckStatusEnum(rawValue: value) }
}