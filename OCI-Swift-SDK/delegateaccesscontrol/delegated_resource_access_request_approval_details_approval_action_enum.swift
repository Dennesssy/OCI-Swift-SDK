import Foundation

// MARK: - DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum

public enum DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum: String, Codable, Sendable {
    case approve = "APPROVE"
    case reject = "REJECT"
}

public extension DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum {
    static var allValues: [DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum] { [.approve, .reject] }
    static var allStringValues: [String] { ["APPROVE", "REJECT"] }
    static func fromString(_ value: String) -> DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum? { DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum(rawValue: value) }
}