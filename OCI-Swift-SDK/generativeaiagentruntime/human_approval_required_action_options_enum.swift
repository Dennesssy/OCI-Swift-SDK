import Foundation

// MARK: - HumanApprovalRequiredActionOptionsEnum

public enum HumanApprovalRequiredActionOptionsEnum: String, Codable, Sendable {
    case approve = "APPROVE"
    case deny = "DENY"
}

public extension HumanApprovalRequiredActionOptionsEnum {
    static var allValues: [HumanApprovalRequiredActionOptionsEnum] { [.approve, .deny] }
    static var allStringValues: [String] { ["APPROVE", "DENY"] }
    static func fromString(_ value: String) -> HumanApprovalRequiredActionOptionsEnum? { HumanApprovalRequiredActionOptionsEnum(rawValue: value) }
}