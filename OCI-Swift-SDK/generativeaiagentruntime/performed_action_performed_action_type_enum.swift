import Foundation

// MARK: - PerformedActionPerformedActionTypeEnum

public enum PerformedActionPerformedActionTypeEnum: String, Codable, Sendable {
    case humanApprovalPerformedAction = "HUMAN_APPROVAL_PERFORMED_ACTION"
    case functionCallingPerformedAction = "FUNCTION_CALLING_PERFORMED_ACTION"
}

public extension PerformedActionPerformedActionTypeEnum {
    static var allValues: [PerformedActionPerformedActionTypeEnum] { [.humanApprovalPerformedAction, .functionCallingPerformedAction] }
    static var allStringValues: [String] { ["HUMAN_APPROVAL_PERFORMED_ACTION", "FUNCTION_CALLING_PERFORMED_ACTION"] }
    static func fromString(_ value: String) -> PerformedActionPerformedActionTypeEnum? { PerformedActionPerformedActionTypeEnum(rawValue: value) }
}