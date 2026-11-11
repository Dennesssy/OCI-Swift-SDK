import Foundation

// MARK: - LimitsIncreaseRequestCommentSenderTypeEnum

public enum LimitsIncreaseRequestCommentSenderTypeEnum: String, Codable, Sendable {
    case customer = "CUSTOMER"
    case oracle = "ORACLE"
}

public extension LimitsIncreaseRequestCommentSenderTypeEnum {
    static var allValues: [LimitsIncreaseRequestCommentSenderTypeEnum] { [.customer, .oracle] }
    static var allStringValues: [String] { ["CUSTOMER", "ORACLE"] }
    static func fromString(_ value: String) -> LimitsIncreaseRequestCommentSenderTypeEnum? { LimitsIncreaseRequestCommentSenderTypeEnum(rawValue: value) }
}