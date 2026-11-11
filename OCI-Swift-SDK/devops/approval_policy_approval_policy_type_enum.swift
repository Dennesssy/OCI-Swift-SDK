import Foundation

// MARK: - ApprovalPolicyApprovalPolicyTypeEnum

public enum ApprovalPolicyApprovalPolicyTypeEnum: String, Codable, Sendable {
    case countBasedApproval = "COUNT_BASED_APPROVAL"
}

public extension ApprovalPolicyApprovalPolicyTypeEnum {
    static var allValues: [ApprovalPolicyApprovalPolicyTypeEnum] { [.countBasedApproval] }
    static var allStringValues: [String] { ["COUNT_BASED_APPROVAL"] }
    static func fromString(_ value: String) -> ApprovalPolicyApprovalPolicyTypeEnum? { ApprovalPolicyApprovalPolicyTypeEnum(rawValue: value) }
}