import Foundation

// MARK: - RequiredActionRequiredActionTypeEnum

public enum RequiredActionRequiredActionTypeEnum: String, Codable, Sendable {
    case humanApprovalRequiredAction = "HUMAN_APPROVAL_REQUIRED_ACTION"
    case functionCallingRequiredAction = "FUNCTION_CALLING_REQUIRED_ACTION"
}

public extension RequiredActionRequiredActionTypeEnum {
    static var allValues: [RequiredActionRequiredActionTypeEnum] { [.humanApprovalRequiredAction, .functionCallingRequiredAction] }
    static var allStringValues: [String] { ["HUMAN_APPROVAL_REQUIRED_ACTION", "FUNCTION_CALLING_REQUIRED_ACTION"] }
    static func fromString(_ value: String) -> RequiredActionRequiredActionTypeEnum? { RequiredActionRequiredActionTypeEnum(rawValue: value) }
}