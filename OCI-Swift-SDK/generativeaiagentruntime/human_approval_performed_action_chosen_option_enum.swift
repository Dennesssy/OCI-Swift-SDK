import Foundation

// MARK: - HumanApprovalPerformedActionChosenOptionEnum

public enum HumanApprovalPerformedActionChosenOptionEnum: String, Codable, Sendable {
    case approve = "APPROVE"
    case deny = "DENY"
}

public extension HumanApprovalPerformedActionChosenOptionEnum {
    static var allValues: [HumanApprovalPerformedActionChosenOptionEnum] { [.approve, .deny] }
    static var allStringValues: [String] { ["APPROVE", "DENY"] }
    static func fromString(_ value: String) -> HumanApprovalPerformedActionChosenOptionEnum? { HumanApprovalPerformedActionChosenOptionEnum(rawValue: value) }
}